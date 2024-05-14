----------------------------
-- Dew Point Calculation Function --
-- Input_Temp = Input Temperature In either F or C 
-- Input_RH = Input Relative Humidity In Percent %
-- Degree_FC = 0 = Temp In C, 1 = Temp In F. Input And Output Relate To This.
----------------------------

function DewPoint(Input_Temp,Input_RH,Degree_FC)
    local T = Input_Temp
    local Select = Degree_FC
    
    if Select == 0 then 
        -- Temp Input/Output In Celsius
        return 243.04*(math.log(Input_RH/100)+((17.625*T)/(243.04+T)))/(17.625-math.log(Input_RH/100)-((17.625*T)/(243.04+T)))
    else
        -- Temp Input/Output In Fahrenheit   
        local T1 = (T - 32) *  .555555556 -- Convert F to C Temp
        local TD_C = 243.04*(math.log(Input_RH/100)+((17.625*T1)/(243.04+T1)))/(17.625-math.log(Input_RH/100)-((17.625*T1)/(243.04+T1)))
        return (TD_C * 1.8) + 32 -- Convert C To F Temp
    end
end


local DewPoint = DewPoint(1777,47,0) -- 1777 = Input_Temp, 47, Input RH, 0 = Celsius
set_sVirt("DewPoint",DewPoint)
