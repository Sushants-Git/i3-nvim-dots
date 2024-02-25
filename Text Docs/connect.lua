local command = "nmcli device wifi connect SUSHANT password bi55xt123"

local handle = nil
local result = nil
local count = 0

function execute_with_timeout(command_arg, timeout)
    local t1 = os.time()
    local res = false
    local co = coroutine.create(function()
        handle = io.popen(command_arg)

        result = handle:read("*a")

        if os.difftime(os.time(),t1) > timeout then
            handle:close()
            io.write("Fail")
            res = false
        end
        if result ~= nil then
            handle:close()
            io.write(result)
            res = true
        end
        handle:close()
    end)

    coroutine.resume(co)
    return res
end

local res = execute_with_timeout(command, 5)
while res == false and count < 2 do
    res = execute_with_timeout(command, 5)
end
