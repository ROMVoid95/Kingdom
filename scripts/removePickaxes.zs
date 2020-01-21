import crafttweaker.item.IItemStack;

/*
 This Script Removes All Vanilla Tolls/Weapons
*/

static pickaxeRemove as IItemStack[] = [
  <minecraft:iron_pickaxe>,
  <minecraft:wooden_pickaxe>,
  <minecraft:diamond_pickaxe>,
  <minecraft:golden_pickaxe>,
  <iceandfire:silver_pickaxe>,
  <primal:obsidian_pickaxe>,
  <primal:opal_pickaxe>,
  <thaumcraft:elemental_pick>.withTag({infench: [{lvl: 1 as short, id: 4 as short}, {lvl: 2 as short, id: 3 as short}]}),
  <thaumcraft:void_pick>,
  <thaumcraft:thaumium_pick>,
  <immersiveengineering:pickaxe_steel>,
  <iceandfire:dragonsteel_ice_pickaxe>,
  <iceandfire:dragonsteel_fire_pickaxe>,
  <iceandfire:myrmex_jungle_pickaxe>,
  <iceandfire:myrmex_desert_pickaxe>,
  <iceandfire:dragonbone_pickaxe>,
  <thaumcraft:infernal_furnace>,
  <minecraft:furnace>,
  <chisel:block_coal:6>,
  <minecraft:iron_pickaxe>,
  <minecraft:wooden_pickaxe>,
  <minecraft:diamond_pickaxe>,
  <minecraft:golden_pickaxe>,
  <iceandfire:silver_pickaxe>,
  <primal:obsidian_pickaxe>,
  <primal:opal_pickaxe>,
  <chisel:block_charcoal:15>,
  <thaumcraft:elemental_pick>.withTag({infench: [{lvl: 1 as short, id: 4 as short}, {lvl: 2 as short, id: 3 as short}]}),
  <thaumcraft:void_pick>,
  <thaumcraft:thaumium_pick>,
  <immersiveengineering:pickaxe_steel>,
  <iceandfire:dragonsteel_ice_pickaxe>,
  <iceandfire:dragonsteel_fire_pickaxe>,
  <iceandfire:myrmex_jungle_pickaxe>,
  <iceandfire:myrmex_desert_pickaxe>,
  <iceandfire:dragonbone_pickaxe>
];

function disable(input as IItemStack) {
	recipes.remove(input);
	input.clearTooltip();
	input.addTooltip(format.red("Disabled"));
}

for item in pickaxeRemove {
	disable(item);
}
