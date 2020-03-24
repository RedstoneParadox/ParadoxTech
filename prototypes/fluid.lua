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

data:extend{
    molten_iron,
    molten_copper
}