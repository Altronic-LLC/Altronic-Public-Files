-----------------------------------------------------  
--Loading Button / Loading Status
----------------------------------------------------- 
if not Load_FS then 
Load_FS = 1
set_sVirt("Load Control","Unloaded")
set_sVirt("Load Status","Not Ready")
Load_State = 0
end

local State = get_state()

if State == 0 then Load_State = 0 end

if State == 7 then 
    if get_gbl("perm7aEnabled",0) > 0 then 
        if get_sVirt("permissive_met","none") == "B not met" then Load_State = 1 end
    else
        Load_State = 1
    end
end

checkToggle("Load Control","Unloaded","Loaded")

if State == 7 and Load_State == 1 then 
    if get_sVirt("Load Control") == "Loaded" then 
        set_sVirt("Load Control","Loaded")
    else
        set_sVirt("Load Control","Unloaded")
    end
    elseif State == 8 then
        set_sVirt("Load Control","Loaded")
    else
        set_sVirt("Load Control","Unloaded")
end
  
-- Load Status
if State >= 7 and Load_State == 1 then
    if get_sVirt("Load Control") == "Unloaded" then set_sVirt("Load Status","Ready To Load(#E2F40A)") end
    if get_sVirt("Load Control") == "Loaded" then 
        set_sVirt("Load Status","Loaded(#58FF33)") 
        set_sVirt("Load_Complete",1)
    end
    elseif State == 8 then
        set_sVirt("Load Status","Loaded(#58FF33)") 
    else
        set_sVirt("Load Status","Not Ready(#FB2103)")
        set_sVirt("Load_Complete",0)
end
  
