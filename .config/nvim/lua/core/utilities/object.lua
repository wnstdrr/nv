-- Object utilities

local DIM = require('utilities.dinject.DIM')
local OBJ = { }

function OBJ.inspect(o, tbs, tb)
  tb = tb or 0
  tbs = tbs or '  '
  if type(o) == 'table' then
    local s = '{'
    if (next(o)) then s = s .. '\n' else return s .. '}' end
    tb = tb + 1
    for k,v in pairs(o) do
      if type(k) ~= 'number' then k = '"' .. k .. '"' end
      s = s .. tbs:rep(tb) .. '[' .. k .. '] = ' .. OBJ.inspect(v, tbs, tb)
      s = s .. ',\n'
    end
    tb = tb - 1
    return s .. tbs:rep(tb) .. '}'
  else
    return tostring(o)
  end
end


function OBJ.inject(class, app)
    local LoadModule = DIM(function(configure)
        -- TODO: Implement dependency injector 
        -- NON-FUNCTIONAL
        local application = LoadModule.getInstance(app)
    end) 
    print(OBJ.inspect(LoadModule))
end
    
return OBJ
