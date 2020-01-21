import crafttweaker.item.IItemStack;

/*
 This Script Removes All Vanilla Tolls/Weapons
*/

static pickaxeRemove as IItemStack[] = [
<iceandfire:silver_shovel>,
<minecraft:golden_shovel>,
<minecraft:diamond_shovel>,
<minecraft:stone_shovel>,
<minecraft:wooden_shovel>,
<minecraft:iron_shovel>,
<thaumcraft:thaumium_shovel>,
<thaumcraft:void_shovel>,
<thaumcraft:elemental_shovel>.withTag({infench: [{lvl: 1 as short, id: 1 as short}]}),
<immersiveengineering:shovel_steel>,
<iceandfire:dragonsteel_ice_shovel>,
<iceandfire:dragonsteel_fire_shovel>,
<iceandfire:myrmex_jungle_shovel>,
<iceandfire:myrmex_desert_shovel>,
<iceandfire:dragonbone_shovel>
];

function disable(input as IItemStack) {
	recipes.remove(input);
	input.clearTooltip();
	input.addTooltip(format.red("Disabled"));
}

for item in pickaxeRemove {
	disable(item);
}
