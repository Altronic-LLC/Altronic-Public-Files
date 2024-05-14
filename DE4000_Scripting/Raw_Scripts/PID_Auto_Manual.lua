-----------------------------------------------------  
--Manual / Auto Button For Analog PID's
-----------------------------------------------------
function ManAutoButton(Name,PID_Number,Increment)
  if not get_sVirt(Name.."_FS") then
    set_sVirt(Name.."_FS",1)
    set_sVirt(Name.."_Control","Auto")
  end

  local Valve_Increment = Increment

  if get_sVirt(Name.."_Control") == "Manual" then 
    set_sGbl("PID"..PID_Number.."Override",get_sVirt(Name.."_Manual_POS") )
  else
    set_sGbl("PID"..PID_Number.."Override",-1)
    set_sVirt(Name.."_Manual_POS",get_sVirt("PID"..PID_Number.."Op",0))
  end
  
  -- Manual Control 
  checkToggle(Name.."_Control","Auto","Manual")
  
  if get_sVirt(Name.."_Control") == "Manual" then
    if get_sVirt(Name.."_Manual_POSBump",0) ~= 0 then
      local si = 10 -- Default SpeedIncrement if no parameter has been created
      local sip = Valve_Increment
      if sip ~= 0 then si = sip end
      local Position = get_sVirt(Name.."_Manual_POS",0)
      Position = Position + (si * get_sVirt(Name.."_Manual_POSBump",0))
      set_sVirt(Name.."_Manual_POS",tostring(math.floor(Position)))
      set_sVirt(Name.."_Manual_POSBump",0)
    end
  else 
    set_sVirt(Name.."_Manual_POSBump",0)
  end
  
  if get_sVirt(Name.."_Manual_POS",0) >= 100 then set_sVirt(Name.."_Manual_POS",100) end
  if get_sVirt(Name.."_Manual_POS",0) <= 0 then set_sVirt(Name.."_Manual_POS",0) end
end

ManAutoButton("Suction",1,5)
ManAutoButton("Bypass",3,12)


