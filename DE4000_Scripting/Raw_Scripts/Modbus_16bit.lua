-- Modbus 16 Bit -- This will set Register 40006 to each bit of the local variables.
local d1 = 1
local d2 = 0
local d3 = 0
local d4 = 1

local d5 = 1
local d6 = 0
local d7 = 1
local d8 = 0

local d9 = 1
local d10 = 1
local d11 = 0
local d12 = 1

local d13 = 0
local d14 = 1
local d15 = 0
local d16 = 1

set_modbus(6,(1*d1)+(2*d2)+(4*d3)+(8*d4)+(16*d5)+(32*d6)+(64*d7)+(128*d8)+(256*d9)+(512*d10)+(1024*d11)+(2048*d12)+(4096*d13)+(8192*d14)+(16384*d15)+(32768*d16))





