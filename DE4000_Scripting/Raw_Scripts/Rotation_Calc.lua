function Rotation(Input_Max_Hz,Input_Max_RPM,Input_Gear_Reduction,Input_Speed_Target)
  local Max_Hz = Input_Max_Hz
  local Max_RPM = Input_Max_RPM
  local Gear_Reduction = Input_Gear_Reduction
  local Speed_Target = Input_Speed_Target
  local Minutes = 60

  local RPH = Max_RPM * Minutes
  local Target_RPM = (Gear_Reduction * Speed_Target) / Minutes

  return Target_RPM / (Max_RPM/Max_Hz)
end


Answer = Rotation(60,1730,1247,2.1)
set_sVirt("Answer",Answer)
