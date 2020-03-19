#priority 200
import crafttweaker.item.IItemStack;

/*
 This Script Removes All Vanilla Tolls/Weapons
*/

static pickaxeRemove as IItemStack[] = [
<minecraft:iron_sword>,
<minecraft:wooden_sword>,
<minecraft:stone_sword>,
<minecraft:diamond_sword>,
<minecraft:golden_sword>,
<iceandfire:silver_sword>,
<iceandfire:dragonbone_sword>,
<iceandfire:dragonbone_sword_ice>,
<iceandfire:hippogryph_sword>,
<iceandfire:myrmex_desert_sword>,
<iceandfire:myrmex_desert_sword_venom>,
<iceandfire:myrmex_jungle_sword>,
<iceandfire:myrmex_jungle_sword_venom>,
<thaumcraft:thaumium_sword>,
<thaumcraft:void_sword>,
<thaumcraft:elemental_sword>.withTag({infench: [{lvl: 2 as short, id: 5 as short}]}),
<iceandfire:dragonbone_sword_fire>,
<minecraft:bow>,
<iceandfire:dragonbone_bow>,
<minecraft:arrow>,
<minecraft:spectral_arrow>,
<minecraft:arrow>
];

function removeAndHide(input as IItemStack) {
	recipes.remove(input);
	mods.jei.JEI.removeAndHide(input);
}

for item in pickaxeRemove {
	removeAndHide(item);
}
