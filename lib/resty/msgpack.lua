-- Copyright (C) chronolaw

local mp = require "resty.MessagePack"
local ffi = require "resty.luajit-msgpack-pure"

return setmetatable(
    {
        version = "0.0.2",
        ffi = ffi
    },

    {__index = mp}
    )
