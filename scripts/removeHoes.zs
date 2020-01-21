import crafttweaker.item.IItemStack;

/*
 This Script Removes All Vanilla Tolls/Weapons
*/

static pickaxeRemove as IItemStack[] = [
<minecraft:wooden_hoe>,
<minecraft:stone_hoe>,
<minecraft:iron_hoe>,
<minecraft:diamond_hoe>,
<minecraft:golden_hoe>,
<iceandfire:silver_hoe>,
<iceandfire:dragonbone_hoe>,
<iceandfire:myrmex_desert_hoe>,
<iceandfire:myrmex_jungle_hoe>,
<iceandfire:dragonsteel_fire_hoe>,
<iceandfire:dragonsteel_ice_hoe>,
<thaumcraft:elemental_hoe>,
<thaumcraft:void_hoe>,
<thaumcraft:thaumium_hoe>
];

function disable(input as IItemStack) {
	recipes.remove(input);
	input.clearTooltip();
	input.addTooltip(format.red("Disabled"));
}

for item in pickaxeRemove {
	disable(item);
}
