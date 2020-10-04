#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;



if (loadedMods has "qmd") {
var elektron60ingot = mods.contenttweaker.VanillaFactory.createItem("elektron60_ingot");
elektron60ingot.maxStackSize = 64;
elektron60ingot.register();

var bladecore = mods.contenttweaker.VanillaFactory.createItem("blade_core");
bladecore.maxStackSize = 64;
bladecore.register();

var steelmould = mods.contenttweaker.VanillaFactory.createItem("steel_mould");
steelmould.maxStackSize = 64;
steelmould.register();

var alloymould = mods.contenttweaker.VanillaFactory.createItem("alloy_mould");
alloymould.maxStackSize = 64;
alloymould.register();

var sicmould = mods.contenttweaker.VanillaFactory.createItem("sic_mould");
sicmould.maxStackSize = 64;
sicmould.register();

}

