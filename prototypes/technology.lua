data:extend({
    -- Metalurgy
    {
        type = "technology",
        name = "metallurgy",
        icon = "__ParadoxTech__/graphics/icons/technology/metallurgy.png",
        icon_size = 320,
        prerequisites = {"advanced-material-processing-2"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "metallurgy-science-pack"
            },
            {
                type = "unlock-recipe",
                recipe = "casting-machine"
            },
            {
              type = "unlock-recipe",
              recipe = "arc-furnace"
          },
        },
        unit = {
          count = 300,
          ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
          },
          time = 30
        },
        order = "c-a"
      },
      {
        type = "technology",
        name = "die-casting",
        icon = "__ParadoxTech__/graphics/icons/missingno.png",
        icon_size = 32,
        prerequisites = {"metallurgy"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "cast-iron-gear-wheels"
            },
            {
                type = "unlock-recipe",
                recipe = "cast-iron-sticks"
            },
            {
              type = "unlock-recipe",
              recipe = "cast-copper-cable"
            },
        },
        unit = {
          count = 500,
          ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"metallurgy-science-pack", 1},
          },
          time = 30
        },
        order = "c-a"
      },
      {
        type = "technology",
        name = "die-casting-2",
        icon = "__ParadoxTech__/graphics/icons/missingno.png",
        icon_size = 32,
        prerequisites = {"die-casting"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "cast-pipe"
            }
        },
        unit = {
          count = 250,
          ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"metallurgy-science-pack", 1},
          },
          time = 15
        },
        order = "c-a"
      },
      {
        type = "technology",
        name = "slag-reprocessing",
        icon = "__ParadoxTech__/graphics/icons/missingno.png",
        icon_size = 32,
        prerequisites = {"metallurgy"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "reprocess-iron-slag"
            },
            {
              type = "unlock-recipe",
              recipe = "reprocess-copper-slag"
            },
        },
        unit = {
          count = 300,
          ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"metallurgy-science-pack", 1},
          },
          time = 30
        },
        order = "c-a"
      },
      --Misc
      {
        type = "technology",
        name = "electrolysis",
        icons = {
          {
            icon = data.raw["fluid"]["water"].icon,
            icon_size = 64,
            scale = 0.005,
            shift = {0, -0.25}
          },
          {
            icon = data.raw["fluid"]["oxygen-gas"].icon,
            icon_size = 120,
            scale = 0.0025,
            shift = {0.25, 0.25}
          },
          {
            icon = data.raw["fluid"]["hydrogen-gas"].icon,
            icon_size = 120,
            scale = 0.0025,
            shift = {-0.25, 0.25}
          },
        },
        icon_size = 32,
        prerequisites = {"chemical-science-pack"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "electrolysis"
            },
        },
        unit = {
          count = 100,
          ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
          },
          time = 20
        },
        order = "c-a"
      },
      {
        type = "technology",
        name = "coal-cleaning",
        icons = data.raw["item"]["clean-coal"].icons,
        icon_size = 64,
        prerequisites = {"chemical-science-pack"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "coal-cleaning"
            },
        },
        unit = {
          count = 100,
          ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
          },
          time = 20
        },
        order = "c-a"
      },
})