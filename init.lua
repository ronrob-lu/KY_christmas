-- KY_Christmas Mod Initialization

local modpath = minetest.get_modpath(minetest.get_current_modname())

-- Load reindeer mob definition
dofile(modpath .. "/reindeer.lua")

-- Helper function to register decorative static items (nodes)
local function register_decorative_item(name, description, mesh_file, icon_file)
	minetest.register_node("ky_christmas:" .. name, {
		description = description,
		drawtype = "mesh",
		mesh = mesh_file,
		tiles = {"colormap.png"},
		inventory_image = icon_file,
		wield_image = icon_file,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		walkable = true,
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		},
		collision_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
		},
		groups = {oddly_breakable_by_hand = 3, attached_node = 0},
	})
end

-- Static Models (Non-Craftable Items)
register_decorative_item("sled", "Sled", "sled.obj", "sled.png")
register_decorative_item("present_b_cube", "Present B Cube", "present-b-cube.obj", "present-b-cube.png")
register_decorative_item("present_a_cube", "Present A Cube", "present-a-cube.obj", "present-a-cube.png")
register_decorative_item("snowman", "Snowman", "snowman.obj", "snowman.png")
register_decorative_item("tree_decorated", "Decorated Tree", "tree-decorated.obj", "tree-decorated.png")
register_decorative_item("tree_decorated_snow", "Decorated Snowy Tree", "tree-decorated-snow.obj", "tree-decorated-snow.png")
register_decorative_item("snowman_hat", "Snowman Hat", "snowman-hat.obj", "snowman-hat.png")
