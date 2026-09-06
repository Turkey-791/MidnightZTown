local QBCore = exports['qb-core']:GetCoreObject()

-- Temporary verification tool.
-- Run in-game as an admin: /shimtest
-- This calls exports['qb-inventory']:AddItem / RemoveItem / HasItem / GetItemByName
-- directly, exactly the way qb-drugs, qb-shops, etc. do - so a clean pass here
-- means the shim itself works, independent of any in-game mechanics
-- (random NPCs, police counts, distances, etc).
--
-- Delete this resource once verification is complete - it's a debug tool,
-- not something to keep running on the live server.

QBCore.Commands.Add('shimtest', 'Test the qb-inventory shim (admin only)', {}, false, function(source)
    local testItem = 'water' -- change this if 'water' isn't in your item list
    local testAmount = 3

    print('^3[shimtest] Starting qb-inventory shim test for source ' .. source .. '^7')

    -- 1. AddItem
    local addOk = exports['qb-inventory']:AddItem(source, testItem, testAmount, false, false, 'shimtest')
    print(('^3[shimtest] AddItem(%s, %s x%s) -> %s^7'):format(source, testItem, testAmount, tostring(addOk)))

    -- 2. HasItem
    local hasOk = exports['qb-inventory']:HasItem(source, testItem, testAmount)
    print(('^3[shimtest] HasItem(%s, %s, %s) -> %s^7'):format(source, testItem, testAmount, tostring(hasOk)))

    -- 3. GetItemByName
    local itemData = exports['qb-inventory']:GetItemByName(source, testItem)
    if itemData then
        print(('^3[shimtest] GetItemByName -> name=%s amount=%s slot=%s^7'):format(tostring(itemData.name), tostring(itemData.amount), tostring(itemData.slot)))
    else
        print('^1[shimtest] GetItemByName -> nil (unexpected if AddItem succeeded)^7')
    end

    -- 4. RemoveItem
    local removeOk = exports['qb-inventory']:RemoveItem(source, testItem, testAmount, false, 'shimtest')
    print(('^3[shimtest] RemoveItem(%s, %s x%s) -> %s^7'):format(source, testItem, testAmount, tostring(removeOk)))

    print('^2[shimtest] Done. Check the results above - all four lines should show success (true / valid data), no red SCRIPT ERROR lines.^7')
end, 'admin')

-- Phase 2a: stash only (CreateInventory + OpenInventory)
QBCore.Commands.Add('shimtest2a', 'Test the qb-inventory shim - stash only (admin only)', {}, false, function(source)
    print('^3[shimtest2a] Starting stash-only test for source ' .. source .. '^7')

    local ok1, err1 = pcall(function()
        exports['qb-inventory']:CreateInventory('shimtest_stash', { label = 'Shimtest Stash', slots = 20, maxweight = 100000 })
    end)
    print(('^3[shimtest2a] CreateInventory -> %s%s^7'):format(tostring(ok1), ok1 and '' or (' ERROR: ' .. tostring(err1))))

    local ok2, err2 = pcall(function()
        exports['qb-inventory']:OpenInventory(source, 'shimtest_stash', { label = 'Shimtest Stash' })
    end)
    print(('^3[shimtest2a] OpenInventory -> %s%s (check in-game: did a stash UI open?)^7'):format(tostring(ok2), ok2 and '' or (' ERROR: ' .. tostring(err2))))
end, 'admin')

-- Phase 2b: shop only (CreateShop + OpenShop), run this AFTER closing the
-- stash UI from shimtest2a so the two don't race on-screen
QBCore.Commands.Add('shimtest2b', 'Test the qb-inventory shim - shop only (admin only)', {}, false, function(source)
    print('^3[shimtest2b] Starting shop-only test for source ' .. source .. '^7')

    local ok3, err3 = pcall(function()
        exports['qb-inventory']:CreateShop({
            name = 'shimtest_shop',
            label = 'Shimtest Shop',
            slots = 2,
            items = {
                { name = 'water', price = 5, amount = 50 },
            },
        })
    end)
    print(('^3[shimtest2b] CreateShop -> %s%s^7'):format(tostring(ok3), ok3 and '' or (' ERROR: ' .. tostring(err3))))

    local ok4, err4 = pcall(function()
        exports['qb-inventory']:OpenShop(source, 'shimtest_shop')
    end)
    print(('^3[shimtest2b] OpenShop -> %s%s (check in-game: did a shop UI open with water for sale?)^7'):format(tostring(ok4), ok4 and '' or (' ERROR: ' .. tostring(err4))))
end, 'admin')

-- Diagnostic: print the shape of Player.PlayerData.items for the calling
-- player, so we can visually confirm resources reading it directly
-- (qb-hud, qb-weapons, qb-crafting, etc.) will see the fields they expect
-- (.name, .amount, .info, .slot) rather than ox's shape (.count, .metadata).
QBCore.Commands.Add('shimtest3', 'Print PlayerData.items shape (admin only)', {}, false, function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end

    local found = false
    for slot, item in pairs(Player.PlayerData.items) do
        found = true
        print(('^3[shimtest3] slot=%s name=%s amount=%s info=%s^7'):format(
            tostring(slot), tostring(item.name), tostring(item.amount), json.encode(item.info or {})
        ))
    end

    if not found then
        print('^1[shimtest3] PlayerData.items is empty - carry at least one item and try again^7')
    else
        print('^2[shimtest3] Done. Each line above should show a real "amount" number, not nil, and no "count"/"metadata" fields.^7')
    end
end, 'admin')

-- Diagnostic: check that spending/adding money through ox_inventory's
-- 'money' item correctly syncs with qb-core's cash balance
-- (server.syncInventory in the ox bridge is responsible for this).
QBCore.Commands.Add('shimtest4', 'Test money sync between ox_inventory and qb-core (admin only)', {}, false, function(source)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end

    local beforeCash = Player.PlayerData.money['cash']
    print(('^3[shimtest4] Cash before: %s^7'):format(tostring(beforeCash)))

    exports['qb-inventory']:AddItem(source, 'money', 500, false, false, 'shimtest4')

    -- Check IMMEDIATELY (same tick, no wait at all) - AddItem's internal
    -- sync should have already run synchronously by the time this line
    -- executes, since Lua is single-threaded and AddItem doesn't yield.
    local immediateCash = Player.PlayerData.money['cash']
    print(('^3[shimtest4] Cash IMMEDIATELY after AddItem call returns: %s^7'):format(tostring(immediateCash)))

    SetTimeout(2000, function()
        -- Directly ask ox_inventory how many 'money' items actually exist,
        -- independent of the qb-core sync logic, to isolate where the
        -- mismatch is happening.
        local actualMoneyCount = exports.ox_inventory:Search(source, 'count', 'money')
        print(('^3[shimtest4] Actual money item count in ox_inventory: %s^7'):format(tostring(actualMoneyCount)))

        local afterCash = Player.PlayerData.money['cash']
        print(('^3[shimtest4] Cash 2 seconds later: %s^7'):format(tostring(afterCash)))

        if immediateCash ~= afterCash then
            print('^1[shimtest4] Cash changed AGAIN between the immediate check and 2 seconds later - something else is modifying it^7')
        end

        if afterCash == beforeCash + 500 then
            print('^2[shimtest4] PASS - cash increased by exactly 500, sync is working^7')
        else
            print('^1[shimtest4] MISMATCH - cash did not increase by the expected amount, check server.syncInventory^7')
        end

        -- clean up the test money
        exports['qb-inventory']:RemoveItem(source, 'money', 500, false, 'shimtest4')
    end)
end, 'admin')
