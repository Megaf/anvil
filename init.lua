-- Anvil mod. By Megaf.
minetest.register_node("megaf_anvil:anvil", {
  description = "Falling Anvil",
	tiles = {
		"default_wood.png",
		"default_wood.png",
		"default_wood.png",
		"default_wood.png",
		"default_wood.png",
		"default_wood.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.125, 0, -0.3125, 0.125, 0.1875, 0.3125}, -- NodeBox1
			{-0.0625, 0.0625, -0.4375, 0.0625, 0.1875, -0.3125}, -- NodeBox5
			{-0.125, 0.0625, 0.1875, 0.125, 0.1875, 0.5}, -- NodeBox6
			{-0.125, -0.375, -0.25, 0.125, -0.1875, 0.125}, -- NodeBox7
			{-0.1875, -0.4375, -0.375, 0.1875, -0.375, 0.4375}, -- NodeBox8
			{-0.25, -0.5, -0.5, 0.25, -0.4375, 0.5}, -- NodeBox9
			{-0.0625, -0.1875, -0.25, 0.0625, 0, 0.125}, -- NodeBox10
		}
	}
  inventory_image = {"anvil_inventory.png"},
  groups = {crumbly=2, falling_node=1}
  drop = 'transparent_nodes:transparent_blue',
  legacy_mineral = true,
  sounds = default.node_sound_stone_defaults(),
  damage_per_second = 16,  
})

minetest.register_craft({
  output = 'megaf_anvil:anvil',
    recipe = {
    {'default:steel_block', 'default:steel_block'},
    {'default:steel_ingot', 'default:steel_ingot'},
    {'default:wood', 'default:wood'},
    }
})

