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
  name = "casting machine",
  enabled = "true",
  ingredients =
  {
    {"iron-plate", 1}
  },
  result = "casting-machine"
}


data:extend{
  grinder_recipe,
  casting_machine_recipe
}

-- Grinding recipes

local grinder_category = {
    type = "recipe-category",
    name = "grinding"
}

local grind_iron_recipe = {
  type = "recipe",
  name = "grind iron ore",
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
  name = "grind copper ore",
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
  name = "cast iron plates",
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
  name = "cast iron gear wheels",
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
  name = "cast iron sticks",
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
  name = "cast iron plates",
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
  name = "cast copper cable",
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