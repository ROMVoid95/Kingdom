#priority 200
import crafttweaker.item.IItemStack;

/*
 This Script Removes All Vanilla Tolls/Weapons
*/

static pickaxeRemove as IItemStack[] = [
<minecraft:iron_axe>,
<minecraft:wooden_axe>,
<iceandfire:myrmex_jungle_axe>,
<iceandfire:myrmex_desert_axe>,
<iceandfire:dragonbone_axe>,
<iceandfire:silver_axe>,
<minecraft:golden_axe>,
<minecraft:diamond_axe>,
<minecraft:stone_axe>,
<spartanfire:battleaxe_fire_dragonsteel>,
<thaumcraft:thaumium_axe>,
<thaumcraft:void_axe>,
<thaumcraft:elemental_axe>.withTag({infench: [{lvl: 1 as short, id: 2 as short}, {lvl: 1 as short, id: 0 as short}]}),
<iceandfire:dragonsteel_fire_axe>,
<iceandfire:dragonsteel_ice_pickaxe>,
<iceandfire:dragonsteel_ice_axe>,
<iceandfire:troll_weapon.axe>
];

function removeAndHide(input as IItemStack) {
	recipes.remove(input);
	mods.jei.JEI.removeAndHide(input);
}

for item in pickaxeRemove {
	removeAndHide(item);
}
