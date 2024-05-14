-----------------------------------------------------
--Startup Function Permissives Labels
-----------------------------------------------------
function PermissiveStateLabel()
    set_sVirt("State_Permissive","None")
    local Startup_Label_Winner = 0
    local pVal = 0
    local state = get_state()
    if tonumber(get_gbl("perm"..state.."a".."Enabled",0)) == 1 then
      local pTerm = get_gbl("perm"..state.."a".."Term",0)
      local pChan = get_gbl("perm"..state.."a".."Chan",0)
      local pSetPoint = get_gbl("perm"..state.."a".."Sp",0)
      local pRel = get_gbl("perm"..state.."a".."Rel","")
  
      if pTerm == "T1" then pTerm = 1 end
      if pTerm == "T2" then pTerm = 2 end
      if pTerm == "T3" then pTerm = 3 end
      if pTerm == "T4" then pTerm = 4 end
      if pTerm == "T5" then pTerm = 5 end
      if pTerm == "NONE" then pTerm = 0 end
      if pChan == "NONE" then pChan = 0 end
      if pChan == "sp1" then
        pChan = 0
        set_sVirt("State_Permissive","RPM > "..pSetPoint)
      end
      pVal = get_channel_val(pTerm,pChan)
      if pRel == ">" then
        if pVal > pSetPoint then Startup_Label_Winner = 1 end
      elseif pRel == "<" then
        if pVal < pSetPoint then Startup_Label_Winner = 1  end
      elseif pRel == "=" then
        if pVal == pSetPoint then Startup_Label_Winner = 1  end
      end
      if pTerm > 0 and pChan > 0 then
        set_sVirt("State_Permissive",get_channel_label(pTerm,pChan))
      end
    end
  
    if tonumber(get_gbl("perm"..state.."b".."Enabled",0)) == 1 then
      local pTerm = get_gbl("perm"..state.."b".."Term",0)
      local pChan = get_gbl("perm"..state.."b".."Chan",0)
      local pSetPoint = get_gbl("perm"..state.."b".."Sp",0)
  
      if pTerm == "T1" then pTerm = 1 end
      if pTerm == "T2" then pTerm = 2 end
      if pTerm == "T3" then pTerm = 3 end
      if pTerm == "T4" then pTerm = 4 end
      if pTerm == "T5" then pTerm = 5 end
      if pTerm == "NONE" then pTerm = 0 end
      if pChan == "NONE" then pChan = 0 end
      if pChan == "sp1" then
        pChan = 0
        set_sVirt("State_Permissive","RPM > "..pSetPoint)
      end
      if pTerm > 0 and pChan > 0 and  Startup_Label_Winner == 1 then
        set_sVirt("State_Permissive",get_channel_label(pTerm,pChan))
      elseif tonumber(get_gbl("perm"..state.."a".."Enabled",0)) == 0 then
        set_sVirt("State_Permissive",get_channel_label(pTerm,pChan))
      end
    end
end
  
PermissiveStateLabel() 
  
  
  
  
  
  
