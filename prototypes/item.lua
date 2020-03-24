--item.lua

 local grinder = {
   type = "item",
   name = "grinder",
   subgroup = "production-machine",
   icon = "__ParadoxTech__/graphics/icons/grinder.png",
   icon_size = 32,
   order = "g",
   place_result = "grinder",
   stack_size = 50
 }

 local casting_machine = {
  type = "item",
  name = "casting-machine",
  subgroup = "production-machine",
  icon = "__ParadoxTech__/graphics/icons/grinder.png",
  icon_size = 32,
  order = "g",
  place_result = "casting-machine",
  stack_size = 50
}


 local ground_iron = {
  type = "item",
  name = "ground-iron",
  subgroup = "raw-material",
  icon = "__ParadoxTech__/graphics/icons/ground_iron_ore.png",
  icon_size = 32,
  order = "b",
  stack_size = 100
}

local ground_copper = {
  type = "item",
  name = "ground-copper",
  subgroup = "raw-material",
  icon = "__ParadoxTech__/graphics/icons/ground_copper_ore.png",
  icon_size = 32,
  order = "b",
  stack_size = 100
}

 data:extend{
    grinder,
    casting_machine,
    ground_iron,
    ground_copper
 }