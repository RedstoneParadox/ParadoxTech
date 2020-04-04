--data.lua

require("prototypes.technology")
require("prototypes.item")
require("prototypes.fluid")
require("prototypes.recipe")
require("prototypes.machines.grinder")
require("prototypes.machines.casting-machine")
require("prototypes.machines.air-compressor")
require("prototypes.machines.gas-heater")

local lab = data.raw["lab"]["lab"]

table.insert(lab.inputs, "metallurgy-science-pack")