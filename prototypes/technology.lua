data:extend({
    -- Metalurgy
    {
        type = "technology",
        name = "metallurgy",
        icon = "__ParadoxTech__/graphics/icons/missingno.png",
        icon_size = 32,
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
      --Misc
      {
        type = "technology",
        name = "electrolysis",
        icon = "__ParadoxTech__/graphics/icons/missingno.png",
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
        icon = "__ParadoxTech__/graphics/icons/missingno.png",
        icon_size = 32,
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