local sounds = require("__base__.prototypes.entity.sounds")

data:extend(
{
  {
    type = "assembling-machine",
    name = "shell-cannon",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    max_health = 300,
    minable = {mining_time = 0.1, result = "shell-cannon"},
    impact_category = "metal",
    surface_conditions =
    {
      {
        property = "pressure",
        min = 0,
        max = 0
      }
    },
    fixed_recipe = "cargo-shell",
    crafting_categories = {"shell-building"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "75kW",
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
            priority="high",
            width = 214,
            height = 226,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2),
            scale = 0.5
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
            priority="high",
            width = 190,
            height = 165,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5, 5),
            scale = 0.5
          }
        }
      }
    }
  }
})