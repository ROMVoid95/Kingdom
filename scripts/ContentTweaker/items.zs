#priority 500
#loader contenttweaker
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

var pick as Item = VanillaFactory.createItem("scepter_pickaxe");
pick.glowing = true;
pick.maxStackSize = 64;
pick.register();

var sword as Item = VanillaFactory.createItem("scepter_sword");
sword.glowing = true;
sword.maxStackSize = 64;
sword.register();

var shovel as Item = VanillaFactory.createItem("scepter_shovel");
shovel.glowing = true;
shovel.maxStackSize = 64;
shovel.register();

var axe as Item = VanillaFactory.createItem("scepter_axe");
axe.glowing = true;
axe.maxStackSize = 64;
axe.register();

var hoe as Item = VanillaFactory.createItem("scepter_hoe");
hoe.glowing = true;
hoe.maxStackSize = 64;
hoe.register();
