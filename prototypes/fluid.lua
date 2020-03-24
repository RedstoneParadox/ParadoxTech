-- Fluids

local molten_iron = {
    type = "fluid",
    name = "molten-iron",
    icon = "__ParadoxTech__/graphics/icons/molten_iron.png",
    icon_size = 32,
    default_temperature = 1538,
    max_temperature = 2862,
    base_color = {r = 0.402, g = 0.036, b = 0.021, a = 1},
    flow_color = {r = 0.402, g = 0.036, b = 0.021, a = 1}
}

local molten_copper = {
    type = "fluid",
    name = "molten-copper",
    icon = "__ParadoxTech__/graphics/icons/molten_copper.png",
    icon_size = 32,
    default_temperature = 1538,
    max_temperature = 2862,
    base_color = {r = 0.402, g = 0.068, b = 0.020, a = 1},
    flow_color = {r = 0.402, g = 0.068, b = 0.020, a = 1}
}

local compressed_air = {
    type = "fluid",
    name = "compressed-air",
    icon = "__ParadoxTech__/graphics/icons/molten_copper.png",
    icon_size = 32,
    default_temperature = 20,
    max_temperature = 1000,
    base_color = {r = 1, g = 1, b = 1, a = 0.3},
    flow_color = {r = 1, g = 1, b = 1, a = 0.3}
}

local hot_air = {
    type = "fluid",
    name = "hot-air",
    icon = "__ParadoxTech__/graphics/icons/molten_copper.png",
    icon_size = 32,
    default_temperature = 1000,
    max_temperature = 5000,
    base_color = {r = 1, g = 151/255, b = 74/255, a = 0.5},
    flow_color = {r = 1, g = 151/255, b = 74/255, a = 0.5}
}

data:extend{
    molten_iron,
    molten_copper,
    compressed_air,
    hot_air
}