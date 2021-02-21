local Cfg=require("Config") -- use this to read your configuration
local log=require('log') -- use this like log.error(any var)

-- Spaces
local Space1=box.space.Space1

-- Non API functions
local function PrivateFunc() -- non api function
  return
end

box.once("schema",function()
  Space1=box.schema.space.create('Space1',{engine="vinyl",format={
    {name='Field1',type='unsigned'},
    {name='Field2',type='string'},
    {name='Field3',type='scalar',is_nullable=true}
    --unsigned|string|integer|number|boolean|array|scalar
  }})
  box.schema.sequence.create('Space1Seq')
  Space1:create_index('primary',{unique=true,parts={{1,"unsigned"}},sequence='Space1Seq'})
end)

-- Your API functions
function Example1(Email)
  return 200, {SomeValue='example'}
end

function Example2(Email)
  return 403
end
