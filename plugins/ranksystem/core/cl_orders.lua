orderCache = orderCache or {}
net.Receive("requestOrders", function()
    local rTable = net.ReadTable()
    local charID = net.ReadInt(10)
    orderCache[charID] = {}
    for _,v in pairs(rTable) do
        local id = tonumber(v.orderid)
        orderCache[charID][id] = true
    end
    --print("[DEBUG] Informationen über eingegangene Aufgabe.")
end)