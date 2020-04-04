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

local air_compressor = {
  type = "item",
  name = "air-compressor",
  subgroup = "production-machine",
  icon = "__ParadoxTech__/graphics/icons/grinder.png",
  icon_size = 32,
  order = "g",
  place_result = "air-compressor",
  stack_size = 50
}

local gas_heater = {
  type = "item",
  name = "gas-heater",
  subgroup = "production-machine",
  icon = "__ParadoxTech__/graphics/icons/grinder.png",
  icon_size = 32,
  order = "g",
  place_result = "gas-heater",
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

local metallurgy_science_pack =   {
  type = "tool",
  name = "metallurgy-science-pack",
  icon = "__ParadoxTech__/graphics/icons/missingno.png",
  icon_size = 32,
  subgroup = "science-pack",
  order = "h[metallurgy-science-pack]",
  stack_size = 200,
  durability = 1,
  durability_description_key = "description.science-pack-remaining-amount-key",
  durability_description_value = "description.science-pack-remaining-amount-value"
}

 data:extend{
    grinder,
    casting_machine,
    air_compressor,
    gas_heater,
    ground_iron,
    ground_copper,
    metallurgy_science_pack
 }