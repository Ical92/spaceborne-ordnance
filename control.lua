script.on_event(defines.events.on_gui_opened, function(event)
    if event.gui_type == defines.gui_type.entity and event.entity.name == "shell-cannon" then
        local entity = event.entity
        local player = game.get_player(event.player_index)
        local custom_frame = player.gui.screen.add{type="frame", direction="vertical", name = "shell-cannon-menu"}
        custom_frame.style.size = {872, 800}
        custom_frame.auto_center = true
        
        -- Header
        local header = custom_frame.add{type="flow",direction="horizontal"}
        header.add{type="label", style="frame_title", caption="Shell cannon"}
        header.add{type="empty-widget", style="draggable_title_header", ignored_by_interaction=true, drag_target = custom_frame}
        header.add{type="sprite-button", style="frame_action_button", sprite="utility/search", tags={action="search"}}
        header.add{type="sprite-button", style="frame_action_button", sprite="utility/circuit_network_panel", tags={action="circuit"}}
        header.add{type="sprite-button", style="frame_action_button", sprite="utility/close", tags={action="close"}}

        content = custom_frame.add{type="flow", direction="horizontal"}

        -- Assembling Frame
        local assembling_frame = content.add{type="frame", style="inside_shallow_frame_with_padding", direction="vertical"}
        assembling_frame.style.size = {424, 528}
        assembling_frame = assembling_frame.add{type="flow", style="two_module_spacing_vertical_flow", direction="vertical"}
        local status = assembling_frame.add{type="flow",direction="horizontal"}
        status.add{type="sprite", style="status_image", sprite="utility/status_not_working"}
        status.add{type="label", caption="Item ingredient shortage"}
        local preview = assembling_frame.add{type="frame", style="deep_frame_in_shallow_frame"}
        preview.style.size = {400, 152}
        preview = preview.add{type="entity-preview"}
        preview.style.size = {400, 152}
        preview.entity = entity

        local recipe = assembling_frame.add{type="flow", style="packed_horizontal_flow"}
        recipe.add{type="flow", style="player_input_horizontal_flow", name="input", raise_hover_events = true}
        recipe.input.add{type="sprite", sprite="item/cargo-shell", ignored_by_interaction=true}
        recipe.input.add{type="label", style="semibold_label", caption="Cargo shell", ignored_by_interaction=true, name="label"}
        recipe.input.add{type="empty-widget", ignored_by_interaction=true}.style.width = 270
        recipe.input.elem_tooltip = {type="recipe", name="cargo-shell"}

        assembling_frame.add{type="line", direction="horizontal"}

        -- Cargo Frame
        local cargo_frame = content.add{type="frame", style="inside_shallow_frame_with_padding", direction="vertical"}
        cargo_frame.style.size = {424, 528}

        player.opened = custom_frame
    end
end)

script.on_event(defines.events.on_gui_click, function(event)
    if event.element.tags.action == "close" then
        close_menu(event.element)
    end
end)

script.on_event(defines.events.on_gui_closed, function(event)
    if event.gui_type == defines.gui_type.custom and event.element.name == "shell-cannon-menu" then
        close_menu(event.element)
    end
end)

script.on_event(defines.events.on_gui_hover, function(event)
    if event.element.name == "input" then
        event.element.label.style="bold_orange_label"
    end
end)

script.on_event(defines.events.on_gui_leave, function(event)
    if event.element.name == "input" then
        event.element.label.style="semibold_label"
    end
end)

script.on_event(defines.events.on_player_created, function(event)
    local player = game.get_player(event.player_index)
    local anchor = {gui=defines.relative_gui_type.controller_gui, position=defines.relative_gui_position.top}
    local frame = player.gui.relative.add{type="frame", anchor=anchor}
    frame.add{type="label", caption=player.name}
end)

function close_menu(element)
    local player = game.get_player(element.player_index)
    player.play_sound{path = "cannon-menu-close"}
    element.gui.screen["shell-cannon-menu"].destroy()
end