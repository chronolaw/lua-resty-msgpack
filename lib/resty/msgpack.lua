local mp = require "resty.MessagePack"
local ffi_mp = require "resty.luajit-msgpack-pure"

return setmetatable(
    {
        version = "0.0.2",
        ffi = ffi_mp
    },

    {__index = mp}
    )
