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
            --[[
          {
            type = "unlock-recipe",
            recipe = "ore-crusher"
          },
          ]]--
        },
        unit = {
          count = 500,
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
})