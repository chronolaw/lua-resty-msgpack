# lua-resty-msgpack
Lua messagepack for ngx_lua/stream_lua/OpenResty

This is an opm wrapper for [lua-MessagePack](https://github.com/fperrad/lua-MessagePack.git)(But it is broken now)

Another choice is [luajit-msgpack-pure](https://github.com/catwell/luajit-msgpack-pure), but it has a different API.

## Installation

Please use `opm`, such as :

```lua
opm get chronolaw/lua-resty-msgpack
```

## Usage

### Basics

```lua
local mp = require "resty.msgpack"

local my_data = {this = {"is",4,"test"}}
local encoded = mp.pack(my_data)
local decoded = mp.unpack(encoded)
```

### Concatenating encoded data

```lua
local mp = require "resty.msgpack"

local my_data_1 = 42
local my_data_2 = "foo"
local encoded = mp.pack(my_data_1) .. mp.pack(my_data_2)

for _,v in mp.unpacker(encoded) do
    ngx.say("unpack is ", type(v), " : ", v)
end
```
