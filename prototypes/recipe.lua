-- Recipes

local grinder_recipe = {
  type = "recipe",
  category = "crafting",
  name = "grinder",
  enabled = "true",
  ingredients =
  {
    {"iron-plate", 1}
  },
  result = "grinder"
}

local casting_machine_recipe = {
  type = "recipe",
  category = "crafting",
  name = "casting-machine",
  enabled = "true",
  ingredients =
  {
    {"electronic-circuit", 3},
    {"steel-plate", 5},
    {"iron-gear-wheel", 5}
  },
  result = "casting-machine"
}

local air_compressor_recipe = {
  type = "recipe",
  category = "crafting",
  name = "air-compressor",
  enabled = "true",
  ingredients =
  {
    {"iron-plate", 1}
  },
  result = "air-compressor"
}

local gas_heater_recipe = {
  type = "recipe",
  category = "crafting",
  name = "gas-heater",
  enabled = "true",
  ingredients =
  {
    {"iron-plate", 1}
  },
  result = "gas-heater"
}

local arc_furnace_recipe = {
  type = "recipe",
  category = "crafting",
  name = "arc-furnace",
  enabled = "true",
  ingredients =
  {
    {"stone-brick", 10},
    {"advanced-circuit", 5},
    {"pipe", 10},
    {"steel-plate", 15},
  },
  result = "arc-furnace"
}

local metallurgy_science_pack_recipe =   {
  type = "recipe",
  name = "metallurgy-science-pack",
  energy_required = 12,
  enabled = "true",
  ingredients =
  {
    {"iron-plate", 2},
  },
  result = "metallurgy-science-pack",
  icon_size = 32,
}


data:extend{
  grinder_recipe,
  casting_machine_recipe,
  air_compressor_recipe,
  gas_heater_recipe,
  arc_furnace_recipe,
  metallurgy_science_pack_recipe
}

-- Grinding recipes

local grinder_category = {
    type = "recipe-category",
    name = "grinding"
}

local grind_iron_recipe = {
  type = "recipe",
  name = "grind-iron-ore",
  category = "grinding",
  enabled = "true",
  ingredients =
  {
    {"iron-ore", 2}
  },
  result = "ground-iron",
  result_count = 3
}

local grind_copper_recipe = {
  type = "recipe",
  name = "grind-copper-ore",
  category = "grinding",
  enabled = "true",
  ingredients =
  {
    {"copper-ore", 2}
  },
  result = "ground-copper",
  result_count = 3
}

data:extend{
  grinder_category,
  grind_iron_recipe,
  grind_copper_recipe
}

-- Casting Recipes

local casting_category = {
  type = "recipe-category",
  name = "casting"
}

local cast_iron_plates = {
  type = "recipe",
  name = "cast-iron-plates",
  category = "casting",
  enabled = "true",
  ingredients =
  {
    {type = "fluid", name = "molten-iron", amount = 100}
  },
  result = "iron-plate",
  result_count = 3
}

local cast_iron_gear_wheels = {
  type = "recipe",
  name = "cast-iron-gear-wheels",
  category = "casting",
  enabled = "true",
  ingredients =
  {
    {type = "fluid", name = "molten-iron", amount = 100}
  },
  result = "iron-gear-wheel",
  result_count = 3
}

local cast_iron_sticks = {
  type = "recipe",
  name = "cast-iron-sticks",
  category = "casting",
  enabled = "true",
  ingredients =
  {
    {type = "fluid", name = "molten-iron", amount = 100}
  },
  result = "iron-stick",
  result_count = 6
}

local cast_copper_plates = {
  type = "recipe",
  name = "cast-iron-plates",
  category = "casting",
  enabled = "true",
  ingredients =
  {
    {type = "fluid", name = "molten-copper", amount = 100}
  },
  result = "copper-plate",
  result_count = 3
}

local cast_copper_cable = {
  type = "recipe",
  name = "cast-copper-cable",
  category = "casting",
  enabled = "true",
  ingredients =
  {
    {type = "fluid", name = "molten-copper", amount = 100}
  },
  result = "copper-cable",
  result_count = 6
}

data:extend{
  casting_category,
  cast_iron_plates,
  cast_iron_gear_wheels,
  cast_iron_sticks,
  cast_copper_plates,
  cast_copper_cable
}

-- Air Compressing Recipes

local air_compressing_category = {
  type = "recipe-category",
  name = "air-compressing"
}

local compressed_air = {
  type = "recipe",
  name = "compressed-air",
  category = "air-compressing",
  enabled = "true",
  ingredients = {},
  results = {
    {type = "fluid", name = "compressed-air", amount = 500}
  },
  result_count = 500
}

data:extend{
  air_compressing_category,
  compressed_air
}

-- Gas Heating Recipes

local gas_heating_category = {
  type = "recipe-category",
  name = "gas-heating"
}

local heat_air = {
  type = "recipe",
  name = "heat-air",
  category = "gas-heating",
  enabled = "true",
  ingredients = {
    {type = "fluid", name = "compressed-air", amount = 100}
  },
  results = {
    {type = "fluid", name = "hot-air", amount = 100}
  },
  result_count = 500
}

data:extend{
  gas_heating_category,
  heat_air
}