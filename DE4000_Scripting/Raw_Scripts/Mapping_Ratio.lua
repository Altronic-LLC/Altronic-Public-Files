----------------------------
-- Maps a number from one range to another:
-- [in_min, in_max] -> [out_min, out_max]
-- Name = Enter The Name Of The Output In Parenthesis 
-- Input = Enter Channel To Get The Process Varible From
-- input_Minimum = Enter The Number For The Minimum Input Value
-- Input_Maximum = Enter The Number For The Maximum Input Value
-- Output_Minimum = Enter The Number For The Output Value Equal To The Minimum Input Value
-- Out_Maximum = Enter The Number For The Output Value Equal To The Maximum Input Value

----------------------------
function map(Input,input_Minimum,Input_Maximum,Output_Minimum,Output_Maximum)
  return Output_Minimum + (Input - input_Minimum)*(Output_Maximum - Output_Minimum)/(Input_Maximum - input_Minimum)
end 

local Ratio_Answer = map("Temperature",get_channel_val(1,1),450,950,0,100) -- This example "Temperature" = Name, get_channel_val(1,1) = Input, 450 = input_Minimum, 950 = input_Maximum, 0 = Output_Minimum, 100 = Output_Maximum


