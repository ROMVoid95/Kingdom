#priority 200
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
<iceandfire:dragonsteel_ice_shovel>,
<iceandfire:dragonsteel_fire_shovel>,
<iceandfire:myrmex_jungle_shovel>,
<iceandfire:myrmex_desert_shovel>,
<iceandfire:dragonbone_shovel>
];

function removeAndHide(input as IItemStack) {
	recipes.remove(input);
	mods.jei.JEI.removeAndHide(input);
}

for item in pickaxeRemove {
	removeAndHide(item);
}
