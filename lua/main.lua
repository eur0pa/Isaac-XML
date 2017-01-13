function RegisterMod(modname)
  local mod = {
    Name = modname,
    AddCallback = function(self, callbackId, fn, entityId)
      if entityId == nil then entityId = -1; end
      
      Isaac.AddCallback(self, callbackId, fn, entityId)
    end,
    SaveData = function(self, data)
      Isaac.SaveModData(self, data)
    end,
    LoadData = function(self)
      return Isaac.LoadModData(self)
    end,
    HasData = function(self)
      return Isaac.HasModData(self)
    end,
    RemoveData = function(self)
      Isaac.RemoveModData(self)
    end
  }
  Isaac.RegisterMod(mod, modname)
  return mod
end