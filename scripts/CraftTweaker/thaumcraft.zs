import crafttweaker.item.IItemStack;

mods.thaumcraft.Infusion.registerRecipe("primordialPearl", "", <thaumcraft:primordial_pearl>, 20, [<aspect:perditio>*25, <aspect:ignis>*25, <aspect:terra>*25, <aspect:ordo>*25], <thaumcraft:metal_void>, [<thaumcraft:void_seed>, <thaumcraft:void_seed>, <thaumcraft:void_seed>, <thaumcraft:ingot:1>]);

static remove as IItemStack[] = [
  <thaumadditions:essentia_pistol>
];

function removeAndHide(input as IItemStack) {
	recipes.remove(input);
	mods.jei.JEI.removeAndHide(input);
}

for item in remove {
	removeAndHide(item);
}
