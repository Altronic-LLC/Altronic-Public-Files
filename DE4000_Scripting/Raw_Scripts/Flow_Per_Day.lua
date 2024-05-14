--***********************-----------------------------***********************
-- No FLow Routine Start
--***********************-----------------------------***********************
if not FirstScan then
	FirstScan = 1
    --added parameters for flow per day 
  	create_param("Flow Monitor Time",24,"Flow Usage Monitor","Enter the monitor length of time before reset, in Hours")
    create_param("Unit_of_Measure","Pints", "Flow Usage Monitor","Enter the unit of measurent")
    create_param("Active on input Open or Close",1,"Flow Usage Monitor","Enter if flow is active on 0 for open or 1 for close")

    create_param("Flow_Value_Bank_1",30,"Flow Usage Monitor","Enter amount of flow per input activation") 

    create_param("Flow_Value_Bank_2",30,"Flow Usage Monitor","Enter amount of flow per input activation") 

    create_param("Flow_Bank_1_Terminal",1,"Flow Usage Monitor","Enter The Terminal Board Number For Bank 1 Input")
    create_param("Flow_Bank_1_Input",27,"Flow Usage Monitor","Enter The Input Number Number For Bank 1 Input")

    create_param("Flow_Bank_2_Terminal",1,"Flow Usage Monitor","Enter The Terminal Board Number For Bank 2 Input")
    create_param("Flow_Bank_2_Input",28,"Flow Usage Monitor","Enter The Input Number Number For Bank 2 Input")

end

local Flow_Bank_1_Terminal = get_param("Flow_Bank_1_Terminal",0)
local Flow_Bank_1_Input = get_param("Flow_Bank_1_Input",0)
local Flow_Bank_2_Terminal = get_param("Flow_Bank_2_Terminal",0)
local Flow_Bank_2_Input = get_param("Flow_Bank_2_Input",0)

if flowpd1 == nil then 
    flowpd1 = 0
end

if flowpd2 == nil then
    flowpd2 = 0
end

  ----------------------------------------
  -- Flow Per Day --
  ----------------------------------------
  local flowval1 = get_param("Flow_Value_Bank_1",0)
  local flowval2 = get_param("Flow_Value_Bank_2",0)
  local uom = get_param("Unit_of_Measure",0)
  
  Monitor_Delay = get_param("Flow Monitor Time",0) * 3600
  set_sVirt("Monitor_Delay",Monitor_Delay)
  
  if not Flow_FS then
      Flow_FS = 1
      Flow_1_State = 0
      Flow_2_State = 1
      Flow_1_Consumption_Per_Day = get_consumption(5,0)
      Flow_2_Consumption_Per_Day = get_consumption(6,0)
      Day_Countdown = get_time()
  end
  
  
  local Activation = get_param("Active on input Open or Close",0)
  local flow1_Act = get_channel_val(Flow_Bank_1_Terminal,Flow_Bank_1_Input)
  local flow2_Act = get_channel_val(Flow_Bank_2_Terminal,Flow_Bank_2_Input)
  
  
  if get_state() > 2 then
    if Flow_1_State == 0 then 
        if flow1_Act == Activation then
            flowpd1 = flowpd1 + flowval1
            Flow_1_State = 1
            set_consumption(5,Flow_1_Consumption_Per_Day + flowpd1)
        end
    elseif Flow_1_State == 1 then
        if flow1_Act ~= Activation then Flow_1_State = 0 end
    
    end
  end
  
  set_sVirt("B1_Flow_per_Monitored_Time",flowpd1.. " " .. tostring( uom))
  set_sVirt("Bank1_Current_Consumption",get_consumption(5,0))
  set_sVirt("Bank1_Previous_Consumption",get_consumption(7,0))

  
  if get_state() > 2 then
    if Flow_2_State == 0 then 
        if flow2_Act == Activation then
            flowpd2 = flowpd2 + flowval2
            Flow_2_State = 1
            set_consumption(6,Flow_2_Consumption_Per_Day + flowpd2)
        end
    elseif Flow_2_State == 1 then
        if flow2_Act ~= Activation then Flow_2_State = 0 end
    end
  end
  
  set_sVirt("B2_Flow_per_Monitored_Time",flowpd2.. " " .. tostring( uom))
  set_sVirt("Bank2_Current_Consumption",get_consumption(6,0))
  set_sVirt("Bank2_Previous_Consumption",get_consumption(8,0))

    if get_time() - Day_Countdown >= Monitor_Delay then
            set_consumption(7,flowpd1)
            set_consumption(8,flowpd2)
            flowpd1 = 0
            flowpd2 = 0
            set_consumption(5,0)
            set_consumption(6,0)
            Day_Countdown = get_time()
    end
    set_sVirt("Monitor time remaing",(math.floor((Monitor_Delay - (get_time()- Day_Countdown))/60)).." Min")

--***********************-----------------------------***********************
-- No FLow Routine End
--***********************-----------------------------***********************