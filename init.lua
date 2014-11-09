-- Anvil mod. By Megaf.
minetest.register_node("megaf_anvil:anvil", {
  description = "Falling Anvil",
  tiles = {"anvil.png"},
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

