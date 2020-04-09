-- Vanilla Recipe Edits

local oxygen_ingredient = {type="fluid", name="oxygen-gas", amount=10}

local solid_light_oil_fuel = data.raw["recipe"]["solid-fuel-from-light-oil"]
table.insert(solid_light_oil_fuel.ingredients, oxygen_ingredient)

local solid_heavy_oil_fuel = data.raw["recipe"]["solid-fuel-from-heavy-oil"]
table.insert(solid_heavy_oil_fuel.ingredients, oxygen_ingredient)

local solid_petro_fuel = data.raw["recipe"]["solid-fuel-from-petroleum-gas"]
table.insert(solid_petro_fuel.ingredients, oxygen_ingredient)

-- Crafting Recipes

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
  enabled = "false",
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
  enabled = "false",
  ingredients =
  {
    {"stone-brick", 10},
    {"advanced-circuit", 5},
    {"pipe", 10},
    {"steel-plate", 15},
  },
  result = "arc-furnace"
}

local fluid_void_recipe = {
  type = "recipe",
  category = "crafting",
  name = "fluid-void",
  enabled = "true",
  ingredients =
  {
    {"iron-plate", 1}
  },
  result = "fluid-void"
}

local metallurgy_science_pack_recipe =   {
  type = "recipe",
  name = "metallurgy-science-pack",
  energy_required = 12,
  enabled = "false",
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
  fluid_void_recipe,
  metallurgy_science_pack_recipe
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
    name = "iron-plate",
    category = "smelting",
    energy_required = 3.2,
    ingredients = {{"iron-ingot", 4}},
    result = "iron-plate",
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
        icon = data.raw["fluid"]["water"].icon,
        icon_size = 64,
        scale = 0.01,
        shift = {0, -0.25}
      },
      {
        icon = data.raw["fluid"]["oxygen-gas"].icon,
        icon_size = 120,
        scale = 0.005,
        shift = {0.25, 0.25}
      },
      {
        icon = data.raw["fluid"]["hydrogen-gas"].icon,
        icon_size = 120,
        scale = 0.005,
        shift = {-0.25, 0.25}
      },
    },
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
      {type = "fluid", name = "molten-iron-slag", amount = 20}
    },
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
      {type = "fluid", name = "molten-iron-slag", amount = 20}
    },
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
      {type = "fluid", name = "molten-copper-slag", amount = 20}
    },
    main_product = "molten-copper",
    icon_size = 64,
    hide_from_player_crafting = "true",
  }
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
  cast_steel_plates,
  cast_steel_ingots,
  cast_copper_plates,
  cast_copper_ingots,
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

local arc_smelting_category = {
  type = "recipe-category",
  name = "arc-smelting"
}

local molten_iron_recipe = {
  type = "recipe",
  name = "molten-iron",
  category = "arc-smelting",
  enabled = "true",
  ingredients = {
    {type = "item", name = "iron-ore", amount = 20}
  },
  results = {
    {type = "fluid", name = "molten-pig-iron", amount = 300}
  },  
  energy_required = 5.0,
  hide_from_player_crafting = "true",
}

local molten_copper_recipe = {
  type = "recipe",
  name = "molten-copper",
  category = "arc-smelting",
  enabled = "true",
  ingredients = {
    {type = "item", name = "copper-ore", amount = 20}
  },
  results = {
    {type = "fluid", name = "molten-impure-copper", amount = 300}
  },
  energy_required = 5.0,
  hide_from_player_crafting = "true",
}

data:extend{
  arc_smelting_category,
  molten_iron_recipe,
  molten_copper_recipe
}