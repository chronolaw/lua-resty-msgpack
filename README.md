# lua-resty-msgpack
Lua messagepack for ngx_lua/stream_lua/OpenResty, Only for LuaJIT

This is a wrapper for [luajit-msgpack-pure](https://github.com/catwell/luajit-msgpack-pure)


## Usage

### Basics

```lua
local msgpack = require "resty.msgpack"

local my_data = {this = {"is",4,"test"}}
local encoded = msgpack.pack(my_data)
local offset,decoded = msgpack.unpack(encoded)
assert(offset == #encoded)
```

### Concatenating encoded data

```lua
local msgpack = require "resty.msgpack"

local my_data_1 = 42
local my_data_2 = "foo"
local encoded = msgpack.pack(my_data_1) .. mp.pack(my_data_2)
local offset_1,decoded_1 = msgpack.unpack(encoded)
assert(decoded_1 == 42)
local offset_2,decoded_2 = msgpack.unpack(encoded,offset_1)
assert(decoded_2 == "foo")
local offset_3,decoded_3 = msgpack.unpack(encoded,offset_2)
assert((not offset_3) and (decoded_3 == nil))
```

