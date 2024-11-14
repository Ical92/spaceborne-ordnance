data:extend(
{
  {
    type = "recipe",
    name = "shell-cannon",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "steel-plate", amount = 10},
      {type = "item", name = "low-density-structure", amount = 20},
      {type = "item", name = "processing-unit", amount = 5},
      {type = "item", name = "concrete", amount = 10}
    },
    energy_required = 30,
    results = {{type="item", name="shell-cannon", amount=1}}
  },
  {
    type = "recipe",
    name = "cargo-shell",
    enabled = false,
    category = "shell-building",
    ingredients =
    {
      {type = "item", name = "steel-plate", amount = 4}
    },
    energy_required = 20,
    results = {{type="item", name="cargo-shell", amount=1}}
  }
})