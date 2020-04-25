--item.lua

data:extend{
  -- Machine Items
  {
    type = "item",
    name = "grinder",
    subgroup = "production-machine",
    icon = "__ParadoxTech__/graphics/icons/grinder.png",
    icon_size = 32,
    order = "g",
    place_result = "grinder",
    stack_size = 50
  },
  {
    type = "item",
    name = "casting-machine",
    subgroup = "production-machine",
    icon = "__ParadoxTech__/graphics/icons/casting_machine.png",
    icon_size = 32,
    order = "g",
    place_result = "casting-machine",
    stack_size = 50
  },
  {
    type = "item",
    name = "air-compressor",
    subgroup = "production-machine",
    icon = "__ParadoxTech__/graphics/icons/grinder.png",
    icon_size = 32,
    order = "g",
    place_result = "air-compressor",
    stack_size = 50
  },
  {
    type = "item",
    name = "gas-heater",
    subgroup = "production-machine",
    icon = "__ParadoxTech__/graphics/icons/grinder.png",
    icon_size = 32,
    order = "g",
    place_result = "gas-heater",
    stack_size = 50
  },
  {
    type = "item",
    name = "arc-furnace",
    subgroup = "production-machine",
    icon = "__ParadoxTech__/graphics/icons/arc_furnace.png",
    icon_size = 64,
    order = "g",
    place_result = "arc-furnace",
    stack_size = 10
  },
  {
    type = "item",
    name = "fluid-void",
    subgroup = "production-machine",
    icon = "__ParadoxTech__/graphics/icons/missingno.png",
    icon_size = 32,
    order = "g",
    place_result = "fluid-void",
    stack_size = 50
  },
  {
    type = "item",
    name = "nano-precision-fabricator",
    subgroup = "production-machine",
    icon = "__ParadoxTech__/graphics/icons/missingno.png",
    icon_size = 32,
    order = "g",
    place_result = "nano-precision-fabricator",
    stack_size = 50
  }
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

local iron_ingot = {
  type = "item",
  name = "iron-ingot",
  subgroup = "raw-material",
  icon = "__ParadoxTech__/graphics/icons/iron_ingot.png",
  icon_size = 64,
  order = "b",
  stack_size = 100
}

local steel_ingot = {
  type = "item",
  name = "steel-ingot",
  subgroup = "raw-material",
  icon = "__ParadoxTech__/graphics/icons/steel_ingot.png",
  icon_size = 64,
  order = "b",
  stack_size = 100
}

local copper_ingot = {
  type = "item",
  name = "copper-ingot",
  subgroup = "raw-material",
  icon = "__ParadoxTech__/graphics/icons/copper_ingot.png",
  icon_size = 64,
  order = "b",
  stack_size = 100
}

local clean_coal = table.deepcopy(data.raw["item"]["coal"])
clean_coal.name = "clean-coal"
clean_coal.icons = {
  {
    icon = clean_coal.icon
  },
  {
    icon = clean_coal.icon,
    tint = {r=255,g=255,b=255,a=0}
  }
}
clean_coal.fuel_value = "8J"
clean_coal.emissions_multiplier = 0.5

 data:extend{
    ground_iron,
    ground_copper,
    iron_ingot,
    steel_ingot,
    copper_ingot,
    clean_coal
 }