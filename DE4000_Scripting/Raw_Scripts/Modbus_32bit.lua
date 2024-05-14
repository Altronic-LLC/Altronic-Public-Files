local node = redis.call("hget","gbl","ModbusAddr")
if not tonumber(node) then
  node = 0
end

local NumTerm = tonumber(redis.call("hget","gbl","NumTerm"))
if not NumTerm then NumTerm = 1 end
for t = 1,NumTerm do
  for c = 1,32 do
    local v = tonumber(redis.call("hget","s:t"..t..":in"..c,"Val"))
    if not v then v = 0 end
    local chan = tonumber(((t-1) * 64) + ((c) * 2) -1)
    set_modbus32(chan,v,4,node)
    local rv = redis.call("hmget","t"..t..":in"..c,"ChTyp","HiSafSpVal","LoSafSpVal")
    if tonumber(rv[1]) > 0 then
      local r1,r2 = float32to16(rv[2])
      local r3,r4 = float32to16(rv[3])
      if not r1 then r1 = 0 end
      if not r2 then r2 = 0 end
      if not r3 then r3 = 0 end
      if not r4 then r4 = 0 end
      set_modbus(2000 + (3200 * (t-1)) + ((c-1) * 100),r1,4,node)
      set_modbus(2001 + (3200 * (t-1)) + ((c-1) * 100),r2,4,node)
      set_modbus(2002 + (3200 * (t-1)) + ((c-1) * 100),r3,4,node)
      set_modbus(2003 + (3200 * (t-1)) + ((c-1) * 100),r4,4,node)
    end
  end
end

-- Read in all virtual channels and save in "virts" array
local virtJson = redis.call("hget","s:json","statJson")
local virts = cjson.decode(virtJson)

for t = 1,10 do
  local v = redis.call("hget","gbl","PID"..t.."Enable")
  if not v then v = 0 end
  local reg = 400 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)


  local v = redis.call("hget","gbl","PID"..t.."PFactor")
  if not v then v = 0 end
  local reg = 402 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

  local v = redis.call("hget","gbl","PID"..t.."IFactor")
  if not v then v = 0 end
  local reg = 404 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

  local v = redis.call("hget","gbl","PID"..t.."DFactor")
  if not v then v = 0 end
  local reg = 406 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

  local v = redis.call("hget","gbl","PID"..t.."Max")
  if not v then v = 0 end
  local reg = 408 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

  local v = redis.call("hget","gbl","PID"..t.."Min")
  if not v then v = 0 end
  local reg = 410 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

  local v = redis.call("hget","gbl","PID"..t.."InTerm")
  if not v then v = 0 end
  local reg = 412 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

  local v = redis.call("hget","gbl","PID"..t.."InChan")
  if not v then v = 0 end
  local reg = 414 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

  local v = redis.call("hget","gbl","PID"..t.."OutTerm")
  if not v then v = 0 end
  local reg = 416 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

  local v = redis.call("hget","gbl","PID"..t.."OutChan")
  if not v then v = 0 end
  local reg = 418 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

  local v = redis.call("hget","gbl","PID"..t.."Deadband")
  if not v then v = 0 end
  local reg = 420 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

  local v = redis.call("hget","gbl","PID"..t.."Sp")
  if not v then v = 0 end
  local reg = 422 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

  local v = virts["PID"..t.."In"]
  if not v then v = 0 end
  local reg = 424 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

  local v = virts["PID"..t.."Op"]
  if not v then v = 0 end
  local reg = 426 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

  local v = virts["PID"..t.."auto"]
  if not v then v = 0 end
  local reg = 428 + 30 * (t-1)
  set_modbus32(reg, v, 4, node)

end
set_ModbusFromGbl(800,"spSuctEn",4,node)
set_ModbusFromGbl(802,"spDischEn",4,node)
set_ModbusFromGbl(804,"suctMin",4,node)
set_ModbusFromGbl(806,"suctSp",4,node)
set_ModbusFromGbl(808,"dischMax",4,node)
set_ModbusFromGbl(810,"dischSp",4,node)

local v = redis.call("hget","gbl","spSuctType")
if not v then v = "linear" end
if v == "pid" then v = 1 else v = 0 end
set_modbus32(812, v, 4, node)

local v = redis.call("hget","gbl","spDischType")
if not v then v = "linear" end
if v == "pid" then v = 1 else v = 0 end
set_modbus32(814, v, 4, node)

set_ModbusFromGbl(816,"spSuctTerm",4,node)
set_ModbusFromGbl(818,"spSuctChan",4,node)
set_ModbusFromGbl(820,"spDischTerm",4,node)
set_ModbusFromGbl(822,"spDischChan",4,node)
set_ModbusFromGbl(824,"outputTerm",4,node)
set_ModbusFromGbl(826,"outputChan",4,node)
set_ModbusFromGbl(828,"outputTerm2",4,node)
set_ModbusFromGbl(830,"outputChan2",4,node)
set_ModbusFromGbl(832,"outputLow",4,node)
set_ModbusFromGbl(834,"outputHigh",4,node)
set_ModbusFromGbl(836,"outputLow2",4,node)
set_ModbusFromGbl(838,"outputHigh2",4,node)
set_ModbusFromGbl(840,"rampRate1",4,node)
set_ModbusFromGbl(842,"rampRate2",4,node)
set_ModbusFromGbl(844,"speedRevAct",4,node)
set_ModbusFromGbl(846,"recycleRevAct",4,node)
set_ModbusFromGbl(848,"suctPIDPFactor",4,node)
set_ModbusFromGbl(850,"suctPIDIFactor",4,node)
set_ModbusFromGbl(852,"suctPIDDFactor",4,node)
set_ModbusFromGbl(854,"dischPIDPFactor",4,node)
set_ModbusFromGbl(856,"dischPIDIFactor",4,node)
set_ModbusFromGbl(858,"dischPIDDFactor",4,node)
set_ModbusFromGbl(860,"manTerm",4,node)
set_ModbusFromGbl(862,"manChan",4,node)

local v = 0
local json = redis.call("hget","s:json","statJson")
local t = cjson.decode(json)["SpeedControl"]
if not t then t = "Manual" end
if t == "Auto" then v = 1 end
set_modbus32(864, v, 4, node)

local v = 0
local json = redis.call("hget","s:json","statJson")
local v = tonumber(cjson.decode(json)["ManualSpeed"])
if not v then v = 0 end
set_modbus32(866, v, 4, node)

local json = redis.call("hget","s:json","statJson")
local v = tonumber(cjson.decode(json)["Speed Target"])
if not v then v = 0 end
set_modbus32(868, v, 4, node)


set_modbus32(911,get_rpm(1),4,node)
set_modbus32(913,get_rpm(2),4,node)
set_modbus32(915,get_rpm(3),4,node)
set_modbus32(917,get_rpm(4),4,node)
set_modbus32(919,get_rpm(5),4,node)
set_modbus32(921,get_rpm(6),4,node)
set_modbus32(923,get_rpm(7),4,node)
set_modbus32(925,get_rpm(8),4,node)
set_modbus32(927,get_rpm(9),4,node)
set_modbus32(929,get_rpm(10),4,node)

local status = 0
local ff = redis.call("hmget","firstFault","flag","channel","type","ChTyp","terminal","state")
local faultFlag = tonumber(ff[1])
local faultChannel = tonumber(ff[2])
local faultType = tonumber(ff[3])
local faultChType = tonumber(ff[4])
local faultTerm = tonumber(ff[5])
local faultState = tonumber(ff[6])

local faultLoHi = 0
if faultFlag == 1 then
  if (faultChType == 1 or faultChType == 3) and faultChannel > 0 then --analog channel fault
    if faultTerm > 0 then
      status = (faultTerm - 1) * 32 + faultChannel
    end
  end

  if faultType == 12 and faultState == 6  then
    status = 171
  end
  if faultChType == 2 then --speed fault
    if faultTerm == 1 and faultChannel == 1 then status = 161 end
    if faultTerm == 1 and faultChannel == 2 then status = 162 end
    if faultTerm == 2 and faultChannel == 1 then status = 163 end
    if faultTerm == 2 and faultChannel == 2 then status = 164 end
    if faultTerm == 3 and faultChannel == 1 then status = 165 end
    if faultTerm == 3 and faultChannel == 2 then status = 166 end
    if faultTerm == 4 and faultChannel == 1 then status = 167 end
    if faultTerm == 4 and faultChannel == 2 then status = 168 end
    if faultTerm == 5 and faultChannel == 1 then status = 169 end
    if faultTerm == 5 and faultChannel == 2 then status = 170 end
  end
  if faultType == 1 then faultLoHi = 1 end
  if faultType == 2 then faultLoHi = 2 end
else
  if get_state() > 0 then status = 255 end
  if status == 255 and get_timers_active() > 0   then
    status = 254
  end
end

set_modbus(900,get_state(),4,node)
set_modbus32(901,get_hourmeter() + (get_hourmeter_mins()/60),4,node)
set_modbus(903,math.floor(status),4,node)
local d1 = get_ctrl_do_val(1)
if not d1 then d1 = 0 end
local d2 = get_ctrl_do_val(2)
if not d2 then d2 = 0 end
local d3 = get_ctrl_do_val(3)
if not d3 then d3 = 0 end
local d4 = get_ctrl_do_val(4)
if not d4 then d4 = 0 end
set_modbus(904,(1*d1)+(2*d2)+(4*d3)+(8*d4),4,node)
set_modbus(905,math.floor(faultLoHi),4,node)
local d1 = get_do_val(1,1)
local d2 = get_do_val(1,2)
local d3 = get_do_val(1,3)
local d4 = get_do_val(1,4)
local d5 = get_do_val(1,5)
local d6 = get_do_val(1,6)
local d7 = get_do_val(1,7)
local d8 = get_do_val(1,8)
set_modbus(906,(1*d1)+(2*d2)+(4*d3)+(8*d4)+(16*d5)+(32*d6)+(64*d7)+(128*d8),4,node)
local d1 = get_do_val(2,1)
local d2 = get_do_val(2,2)
local d3 = get_do_val(2,3)
local d4 = get_do_val(2,4)
local d5 = get_do_val(2,5)
local d6 = get_do_val(2,6)
local d7 = get_do_val(2,7)
local d8 = get_do_val(2,8)
set_modbus(907,(1*d1)+(2*d2)+(4*d3)+(8*d4)+(16*d5)+(32*d6)+(64*d7)+(128*d8),4,node)
local d1 = get_do_val(3,1)
local d2 = get_do_val(3,2)
local d3 = get_do_val(3,3)
local d4 = get_do_val(3,4)
local d5 = get_do_val(3,5)
local d6 = get_do_val(3,6)
local d7 = get_do_val(3,7)
local d8 = get_do_val(3,8)
set_modbus(908,(1*d1)+(2*d2)+(4*d3)+(8*d4)+(16*d5)+(32*d6)+(64*d7)+(128*d8),4,node)
local d1 = get_do_val(4,1)
local d2 = get_do_val(4,2)
local d3 = get_do_val(4,3)
local d4 = get_do_val(4,4)
local d5 = get_do_val(4,5)
local d6 = get_do_val(4,6)
local d7 = get_do_val(4,7)
local d8 = get_do_val(4,8)
set_modbus(909,(1*d1)+(2*d2)+(4*d3)+(8*d4)+(16*d5)+(32*d6)+(64*d7)+(128*d8),4,node)
local d1 = get_do_val(5,1)
local d2 = get_do_val(5,2)
local d3 = get_do_val(5,3)
local d4 = get_do_val(5,4)
local d5 = get_do_val(5,5)
local d6 = get_do_val(5,6)
local d7 = get_do_val(5,7)
local d8 = get_do_val(5,8)
set_modbus(910,(1*d1)+(2*d2)+(4*d3)+(8*d4)+(16*d5)+(32*d6)+(64*d7)+(128*d8),4,node)
local chInc = 0
for termIndex = 1,5 do
  for chIndex = 1,4 do
    set_modbus32(931+chInc*2,get_ao_val(termIndex,chIndex),4,node)
    chInc = chInc + 1
  end
end
