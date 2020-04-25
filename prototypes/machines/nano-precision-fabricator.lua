data:extend{
    {
      type = "assembling-machine",
      name = "nano-precision-fabricator",
      icon = "__ParadoxTech__/graphics/icons/missingno.png",
      icon_size = 32,
      flags = {"placeable-neutral","placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "casting-machine"},
      max_health = 800,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      resistances = 
      {
        {
          type = "fire",
          percent = 70
        }
      },
      collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
      selection_box = {{-1, -1}, {1, 1}},
      animation =
      {
        filename = "__ParadoxTech__/graphics/icons/missingno.png",
        priority = "high",
        width = 32,
        height = 32,
        frame_count = 1,
        line_length = 1,
        scale = 2
      },
      fluid_boxes =
      {
        {
          production_type = "input",
          pipe_picture = assembler2pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{ type="input", position = {0.5, -1.5} }}
        },
        off_when_no_fluid_recipe = true
      },
      open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
      working_sound =
      {
        sound = {
          {
            filename = "__base__/sound/electric-mining-drill.ogg",
            apparent_volume = 1.5
          },
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
      },
      crafting_categories = {"nano-fabrication"},
      crafting_speed = 1,
      energy_source =
      {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.2
      },
      energy_usage = "650kW",
      module_specification =
      {
        module_slots = 2,
        module_info_icon_shift = {0, 0.5},
        module_info_multi_row_initial_height_modifier = -0.3
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"}
    }
  }