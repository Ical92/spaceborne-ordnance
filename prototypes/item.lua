local item_sounds = require("__base__.prototypes.item_sounds")

data:extend(
{
  {
    type = "item",
    name = "shell-cannon",
    icon = "__space-age__/graphics/icons/cargo-bay.png",
    icon_size = 64,
    subgroup = "space-platform",
    order = "c[shell-cannon]",
    inventory_move_sound = item_sounds.mechanical_large_inventory_move,
    pick_sound = item_sounds.mechanical_large_inventory_pickup,
    drop_sound = item_sounds.mechanical_large_inventory_move,
    place_result = "shell-cannon",
    stack_size = 10,
    weight = 100 * kg
  },
  {
    type = "item",
    name = "cargo-shell",
    icon = "__spaceborne-ordnance__/graphics/icons/cargo-shell.png",
    icon_size = 64,
    subgroup = "space-platform",
    order = "c[cargo-shell]",
    stack_size = 1,
    weight = 20 * kg
  }
})