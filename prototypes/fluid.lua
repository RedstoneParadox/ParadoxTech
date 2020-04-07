-- Fluids

local dropletIcon = data.raw.fluid["crude-oil"].icon

local molten_iron = {
    type = "fluid",
    name = "molten-iron",
    icons = {
        {
            icon = table.deepcopy(dropletIcon),
            tint = {r = 1, g = 64/255, b = 0, a = 1},
            icon_size = 32
        }
    },
    default_temperature = 1538,
    max_temperature = 2862,
    base_color = {r = 0.402, g = 0.036, b = 0.021, a = 1},
    flow_color = {r = 0.402, g = 0.036, b = 0.021, a = 1}
}

local molten_pig_iron = {
    type = "fluid",
    name = "molten-pig-iron",
    icons = {
        {
            icon = table.deepcopy(dropletIcon),
            tint = {r = 180/255, g = 75/255, b = 0, a = 1},
            icon_size = 32
        }
    },
    default_temperature = 1538,
    max_temperature = 2862,
    base_color = {r = 180/255, g = 75/255, b = 0, a = 1},
    flow_color = {r = 180/255, g = 75/255, b = 0, a = 1}
}

local molten_steel = {
    type = "fluid",
    name = "molten-steel",
    icons = {
        {
            icon = table.deepcopy(dropletIcon),
            tint = {r = 220, g = 220, b = 220, a = 255},
            icon_size = 32
        }
    },
    default_temperature = 1538,
    max_temperature = 2862,
    base_color = {r = 169, g = 169, b = 169, a = 255},
    flow_color = {r = 119, g = 136, b = 143, a = 255}
}

local molten_copper = {
    type = "fluid",
    name = "molten-copper",
    icons = {
        {
            icon = table.deepcopy(dropletIcon),
            tint = {r = 240/255, g = 100/255, b = 0, a = 1},
            icon_size = 32
        }
    },
    default_temperature = 1538,
    max_temperature = 2862,
    base_color = {r = 240/255, g = 120/255, b = 0, a = 1},
    flow_color = {r = 240/255, g = 120/255, b = 0, a = 1}
}

local molten_impure_copper = {
    type = "fluid",
    name = "molten-impure-copper",
    icons = {
        {
            icon = table.deepcopy(dropletIcon),
            tint = {r = 200/255, g = 80/255, b = 0, a = 1},
            icon_size = 32
        }
    },
    default_temperature = 1538,
    max_temperature = 2862,
    base_color = {r = 200/255, g = 100/255, b = 0, a = 1},
    flow_color = {r = 200/255, g = 100/255, b = 0, a = 1}
}

local airIcon = data.raw.fluid["steam"].icon

local compressed_air = {
    type = "fluid",
    name = "compressed-air",
    icons = {
        {
            icon = table.deepcopy(airIcon),
            tint = {r = 0.85, g = 0.85, b = 1, a = 0.5},
            icon_size = 32
        }
    },
    default_temperature = 20,
    max_temperature = 1000,
    base_color = {r = 1, g = 1, b = 1, a = 0.3},
    flow_color = {r = 1, g = 1, b = 1, a = 0.3}
}

local hot_air = {
    type = "fluid",
    name = "hot-air",
    icons = {
        {
            icon = table.deepcopy(airIcon),
            tint = {r = 1, g = 128/255, b = 0, a = 0.5},
            icon_size = 32
        }
    },
    default_temperature = 1000,
    max_temperature = 5000,
    base_color = {r = 1, g = 151/255, b = 74/255, a = 0.5},
    flow_color = {r = 1, g = 151/255, b = 74/255, a = 0.5}
}

local oxygen = {
    type = "fluid",
    name = "oxygen-gas",
    icons = {
        {
            icon = "__ParadoxTech__/graphics/icons/oxygen.png",
            icon_size = 120
        }
    },
    default_temperature = 10,
    max_temperature = 1000,
    base_color = {r = 1, g = 0, b = 0, a = 1},
    flow_color = {r = 1, g = 0, b = 0, a = 1}
}

local hydrogen = {
    type = "fluid",
    name = "hydrogen-gas",
    icons = {
        {
            icon = "__ParadoxTech__/graphics/icons/hydrogen.png",
            icon_size = 120
        }
    },
    default_temperature = 10,
    max_temperature = 1000,
    base_color = {r = 1, g = 0, b = 1, a = 1},
    flow_color = {r = 1, g = 0, b = 1, a = 1}
}

data:extend{
    molten_iron,
    molten_pig_iron,
    molten_steel,
    molten_copper,
    molten_impure_copper,
    compressed_air,
    hot_air,
    oxygen,
    hydrogen
}