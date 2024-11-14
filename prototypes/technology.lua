data:extend(
{
    {
        type = "technology",
        name = "cargo-shells",
        icon = "__space-age__/graphics/technology/space-platform.png",
        icon_size = 256,
        effects =
        {
        {
            type = "unlock-recipe",
            recipe = "shell-cannon"
        },
        {
            type = "unlock-recipe",
            recipe = "cargo-shell"
        }
        },
        prerequisites = {"space-platform", "artillery"},
        unit =
        {
        count = 500,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"space-science-pack", 1}
        },
        time = 60
        }
    }
})