-- Vanilla Recipe Edits

local oxygen_ingredient = {type="fluid", name="oxygen-gas", amount=10}

local solid_light_oil_fuel = data.raw["recipe"]["solid-fuel-from-light-oil"]
table.insert(solid_light_oil_fuel.ingredients, oxygen_ingredient)

local solid_heavy_oil_fuel = data.raw["recipe"]["solid-fuel-from-heavy-oil"]
table.insert(solid_heavy_oil_fuel.ingredients, oxygen_ingredient)

local solid_petro_fuel = data.raw["recipe"]["solid-fuel-from-petroleum-gas"]
table.insert(solid_petro_fuel.ingredients, oxygen_ingredient)

-- Crafting Recipes

data:extend{
  {
    type = "recipe",
    category = "crafting",
    name = "grinder",
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 1}
    },
    result = "grinder"
  },
  {
    type = "recipe",
    category = "crafting",
    name = "casting-machine",
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit", 3},
      {"steel-plate", 5},
      {"iron-gear-wheel", 5}
    },
    result = "casting-machine"
  },
  {
    type = "recipe",
    category = "crafting",
    name = "air-compressor",
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 1}
    },
    result = "air-compressor"
  },
  {
    type = "recipe",
    category = "crafting",
    name = "gas-heater",
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 1}
    },
    result = "gas-heater"
  },
  {
    type = "recipe",
    category = "crafting",
    name = "arc-furnace",
    enabled = "false",
    ingredients =
    {
      {"stone-brick", 10},
      {"advanced-circuit", 5},
      {"pipe", 10},
      {"steel-plate", 15},
    },
    result = "arc-furnace"
  },
  {
    type = "recipe",
    category = "crafting",
    name = "fluid-void",
    enabled = "true",
    ingredients =
    {
      {"iron-plate", 1}
    },
    result = "fluid-void"
  },
  {
    type = "recipe",
    category = "crafting",
    name = "nano-precision-fabricator",
    enabled = "true",
    ingredients =
    {
      {"processing-unit", 1},
      {"plastic-bar", 10},
      {"steel-plate", 5},
      {"iron-gear-wheel", 5}
    },
    result = "nano-precision-fabricator"
  },
}

-- Furnace Recipes

data:extend({
  {
    type = "recipe",
    name = "copper-plate-from-ingot",
    category = "smelting",
    energy_required = 3.2,
    ingredients = {{ "copper-ingot", 4}},
    result = "copper-plate",
    result_count = 5,
    hide_from_player_crafting = "true",
  },
  {
    type = "recipe",
    name = "iron-plate-from-ingot",
    category = "smelting",
    energy_required = 3.2,
    ingredients = {{"iron-ingot", 4}},
    result = "iron-plate",
    result_count = 5,
    hide_from_player_crafting = "true",
  },
  {
    type = "recipe",
    name = "steel-plate-from-ingot",
    category = "smelting",
    energy_required = 3.2,
    ingredients = {{"steel-ingot", 4}},
    result = "steel-plate",
    result_count = 5,
    hide_from_player_crafting = "true",
  }
})

-- Voiding Recipes

local void_category = {
  type = "recipe-category",
  name = "void"
}

local void_hydrogen = {
  type = "recipe",
  name = "void-hydrogen",
  category = "void",
  enabled = "true",
  subgroup = "fluid-recipes",
  ingredients = {
    {type = "fluid", name = "hydrogen-gas", amount = 500},
  },
  results = {
    
  },
  icon = "__ParadoxTech__/graphics/icons/missingno.png",
  icon_size = 32,
  hide_from_player_crafting = "true",
}

data:extend{
  void_category,
  void_hydrogen
}

-- Chemical Recipes

data:extend{
  {
    type = "recipe",
    name = "electrolysis",
    category = "chemistry",
    enabled = "false",
    subgroup = "fluid-recipes",
    ingredients = {
      {type = "fluid", name = "water", amount = 100}
    },
    results = {
      {type = "fluid", name = "hydrogen-gas", amount = 100},
      {type = "fluid", name = "oxygen-gas", amount = 50}
    },
    icons = {
      {
        icon = "__core__/graphics/empty.png", -- not sure where exaclty, somewhere in core
        icon_size = 1,
        scale = 32,
      },
      {
        icon = data.raw["fluid"]["water"].icon,
        icon_size = 64,
        scale = 0.25,
        shift = {0, -8}
      },
      {
        icon = data.raw["fluid"]["oxygen-gas"].icon,
        icon_size = 64,
        scale = 0.25,
        shift = {8, 8}
      },
      {
        icon = data.raw["fluid"]["hydrogen-gas"].icon,
        icon_size = 64,
        scale = 0.25,
        shift = {-8, 8}
      },
    },
    hide_from_player_crafting = "true",
  },
  {
    type = "recipe",
    name = "raw-carbon-extraction",
    category = "chemistry",
    enabled = "true",
    ingredients = {
      {type = "item", name = "coal", amount = 5},
    },
    results = {
      {type = "item", name = "raw-carbon", amount = 5},
    },
    main_product = "raw-carbon",
    hide_from_player_crafting = "true",
  },
  {
    type = "recipe",
    name = "coal-cleaning",
    category = "chemistry",
    enabled = "false",
    subgroup = "fluid-recipes",
    ingredients = {
      {type = "fluid", name = "water", amount = 50},
      {type = "item", name = "coal", amount = 5},
    },
    results = {
      {type = "item", name = "clean-coal", amount = 5},
      {type = "fluid", name = "sulfuric-acid", amount = 5}
    },
    icon_size = 32,
    hide_from_player_crafting = "true",
    main_product = "clean-coal"
  },
  {
    type = "recipe",
    name = "pig-iron-purification",
    category = "chemistry",
    enabled = "true",
    subgroup = "fluid-recipes",
    ingredients = {
      {type = "fluid", name = "molten-pig-iron", amount = 100},
      {type = "fluid", name = "oxygen-gas", amount = 25}
    },
    results = {
      {type = "fluid", name = "molten-iron", amount = 100},
      {type = "fluid", name = "iron-slag-slurry", amount = 20}
    },
    energy_required = 1,
    main_product = "molten-iron",
    icon_size = 64,
    hide_from_player_crafting = "true",
  },
  {
    type = "recipe",
    name = "reprocess-iron-slag",
    category = "chemistry",
    enabled = "false",
    subgroup = "fluid-recipes",
    ingredients = {
      {type = "fluid", name = "iron-slag-slurry", amount = 20},
      {type = "fluid", name = "oxygen-gas", amount = 25}
    },
    results = {
      {type = "fluid", name = "molten-iron", amount = 10}
    },
    energy_required = 1,
    main_product = "molten-iron",
    icon_size = 64,
    hide_from_player_crafting = "true",
  },
  {
    type = "recipe",
    name = "molten-steel",
    category = "chemistry",
    enabled = "true",
    subgroup = "fluid-recipes",
    ingredients = {
      {type = "fluid", name = "molten-iron", amount = 100},
      {type = "fluid", name = "oxygen-gas", amount = 50}
    },
    results = {
      {type = "fluid", name = "molten-steel", amount = 60},
      {type = "fluid", name = "iron-slag-slurry", amount = 20}
    },
    energy_required = 1,
    main_product = "molten-steel",
    icon_size = 64,
    hide_from_player_crafting = "true",
  },
  {
    type = "recipe",
    name = "molten-copper-purification",
    category = "chemistry",
    enabled = "true",
    subgroup = "fluid-recipes",
    ingredients = {
      {type = "fluid", name = "molten-impure-copper", amount = 100},
      {type = "fluid", name = "oxygen-gas", amount = 25}
    },
    results = {
      {type = "fluid", name = "molten-copper", amount = 100},
      {type = "fluid", name = "copper-slag-slurry", amount = 20}
    },
    energy_required = 1,
    main_product = "molten-copper",
    icon_size = 64,
    hide_from_player_crafting = "true",
  },
  {
    type = "recipe",
    name = "reprocess-copper-slag",
    category = "chemistry",
    enabled = "false",
    subgroup = "fluid-recipes",
    ingredients = {
      {type = "fluid", name = "copper-slag-slurry", amount = 20},
      {type = "fluid", name = "oxygen-gas", amount = 25}
    },
    results = {
      {type = "fluid", name = "molten-copper", amount = 10}
    },
    energy_required = 1,
    main_product = "molten-copper",
    icon_size = 64,
    hide_from_player_crafting = "true",
  },
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
  result_count = 3,
  hide_from_player_crafting = "true",
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
  result_count = 3,
  hide_from_player_crafting = "true",
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
    {type = "fluid", name = "molten-iron", amount = 10}
  },
  result = "iron-plate",
  result_count = 1,
  energy_required = 1,
  hide_from_player_crafting = "true",
}

local cast_iron_ingots = {
  type = "recipe",
  name = "cast-iron-ingots",
  category = "casting",
  enabled = "true",
  ingredients =
  {
    {type = "fluid", name = "molten-iron", amount = 10}
  },
  result = "iron-ingot",
  result_count = 1,
  energy_required = 1,
  hide_from_player_crafting = "true",
}

local cast_iron_gear_wheels = {
  type = "recipe",
  name = "cast-iron-gear-wheels",
  category = "casting",
  enabled = "false",
  ingredients =
  {
    {type = "fluid", name = "molten-iron", amount = 10}
  },
  result = "iron-gear-wheel",
  result_count = 1,
  energy_required = 1,
  hide_from_player_crafting = "true",
}

local cast_iron_sticks = {
  type = "recipe",
  name = "cast-iron-sticks",
  category = "casting",
  enabled = "false",
  ingredients =
  {
    {type = "fluid", name = "molten-iron", amount = 10}
  },
  result = "iron-stick",
  result_count = 2,
  energy_required = 1,
  hide_from_player_crafting = "true",
}

local cast_pipe = {
  type = "recipe",
  name = "cast-pipe",
  category = "casting",
  enabled = "false",
  ingredients =
  {
    {type = "fluid", name = "molten-iron", amount = 10}
  },
  result = "pipe",
  result_count = 1,
  energy_required = 1,
  hide_from_player_crafting = "true",
}

local cast_steel_plates = {
  type = "recipe",
  name = "cast-steel-plates",
  category = "casting",
  enabled = "true",
  ingredients =
  {
    {type = "fluid", name = "molten-steel", amount = 10}
  },
  result = "steel-plate",
  result_count = 1,
  energy_required = 1,
  hide_from_player_crafting = "true",
}

local cast_steel_ingots = {
  type = "recipe",
  name = "cast-steel-ingots",
  category = "casting",
  enabled = "true",
  ingredients =
  {
    {type = "fluid", name = "molten-steel", amount = 10}
  },
  result = "steel-ingot",
  result_count = 1,
  energy_required = 1,
  hide_from_player_crafting = "true",
}

local cast_copper_plates = {
  type = "recipe",
  name = "cast-copper-plates",
  category = "casting",
  enabled = "true",
  ingredients =
  {
    {type = "fluid", name = "molten-copper", amount = 10}
  },
  result = "copper-plate",
  result_count = 1,
  energy_required = 1,
  hide_from_player_crafting = "true",
}

local cast_copper_ingots = {
  type = "recipe",
  name = "cast-copper-ingots",
  category = "casting",
  enabled = "true",
  ingredients =
  {
    {type = "fluid", name = "molten-copper", amount = 10}
  },
  result = "copper-ingot",
  result_count = 1,
  energy_required = 1,
  hide_from_player_crafting = "true",
}

local cast_copper_cable = {
  type = "recipe",
  name = "cast-copper-cable",
  category = "casting",
  enabled = "false",
  ingredients =
  {
    {type = "fluid", name = "molten-copper", amount = 10}
  },
  result = "copper-cable",
  result_count = 2,
  energy_required = 1,
  hide_from_player_crafting = "true",
}

data:extend{
  casting_category,
  cast_iron_plates,
  cast_iron_ingots,
  cast_iron_gear_wheels,
  cast_iron_sticks,
  cast_pipe,
  cast_steel_plates,
  cast_steel_ingots,
  cast_copper_plates,
  cast_copper_ingots,
  cast_copper_cable
}

-- Nano Fabrication Recipes

data:extend{
  {
    type = "recipe-category",
    name = "nano-fabrication"
  },
  {
    type = "recipe",
    name = "carbon-nanotubes",
    category = "nano-fabrication",
    enabled = "true",
    ingredients = {
      {type = "item", name = "raw-carbon", amount = 1}
    },
    results = {
      {type = "item", name = "carbon-nanotube", amount = 10}
    },
    hide_from_player_crafting = "true",
  },
  {
    type = "recipe",
    name = "graphene",
    category = "nano-fabrication",
    enabled = "true",
    ingredients = {
      {type = "item", name = "carbon-nanotube", amount = 5},
      {type = "fluid", name = "sulfuric-acid", amount = 1},
    },
    results = {
      {type = "item", name = "graphene", amount = 2}
    },
    hide_from_player_crafting = "true",
  }
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
  result_count = 500,
  hide_from_player_crafting = "true",
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
  result_count = 500,
  hide_from_player_crafting = "true",
}

data:extend{
  gas_heating_category,
  heat_air
}

-- Arc Furnace Recipes

data:extend{
  {
    type = "recipe-category",
    name = "arc-smelting"
  },
  {
    type = "recipe",
    name = "molten-iron",
    category = "arc-smelting",
    enabled = "true",
    ingredients = {
      {type = "item", name = "iron-ore", amount = 60}
    },
    results = {
      {type = "fluid", name = "molten-pig-iron", amount = 900}
    },  
    energy_required = 5.0,
    hide_from_player_crafting = "true",
  },
  {
    type = "recipe",
    name = "molten-copper",
    category = "arc-smelting",
    enabled = "true",
    ingredients = {
      {type = "item", name = "copper-ore", amount = 60}
    },
    results = {
      {type = "fluid", name = "molten-impure-copper", amount = 900}
    },
    energy_required = 5.0,
    hide_from_player_crafting = "true",
  }
}