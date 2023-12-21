
import scripts.nc_script_addons.NTP.coilclasses.MagnetInfo;
import scripts.nc_script_addons.NTP.coilmagnetlist.MagnetInfoList;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.AlloyFurnace;


// material , material , material 
// <ore:ingotHSLASteel> <nuclearcraft:turbine_dynamo_coil_basemagnet> <ore:ingotHSLASteel>
//material material material 

recipes.addShaped("ntp base magnet coil", <nuclearcraft:turbine_dynamo_coil_basemagnet>*2,
	[[<ore:ingotCopper>,<ore:ingotHSLASteel>, <ore:ingotCopper>],
	[<ore:ingotHSLASteel>, <ore:ingotIron>, <ore:ingotHSLASteel>],
	[<ore:ingotCopper>,<ore:ingotHSLASteel>, <ore:ingotCopper>]]); 
	
val ahtank = <qmd:cell:1>.withTag({particle_storage: {particle_amount: 100000, particle_capacity: 100000}});
val ahtankre = ahtank.transformReplace(<qmd:cell>);	
	
recipes.addShaped("ntp antihydrogen coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_antihydrogenmagnet")*2,
	[[ahtankre,ahtankre,ahtankre],
	[<ore:ingotHSLASteel>, <nuclearcraft:turbine_dynamo_coil_basemagnet>, <ore:ingotHSLASteel>],
	[ahtankre,ahtankre, ahtankre]]);	
	
Infuser.addRecipe(<nuclearcraft:turbine_dynamo_coil_basemagnet>, <liquid:nak>*1296, <nuclearcraft:turbine_dynamo_coil_nakmagnet>*2);
	

function addMagnetRecipe (info as MagnetInfo){
	var material as IIngredient;	
	if (oreDict has ("ingot"~info.name)){
	material = oreDict.get("ingot"~info.name);
	}else{
	if (oreDict has ("dust"~info.name)){
			material = oreDict.get("dust"~info.name);
			
		}else{
			material = oreDict.get("gem"~info.name);
			
		}
	}
	
	
	recipes.addShaped("ntp " ~info.name ~ " coil", itemUtils.getItem("nuclearcraft:turbine_dynamo_coil_" ~ (info.name).toLowerCase() ~ "magnet")*2,
	[[material,material, material],
	[<ore:ingotHSLASteel>, <nuclearcraft:turbine_dynamo_coil_basemagnet>, <ore:ingotHSLASteel>],
	[material,material, material]]); 
	
}
	
for info in MagnetInfoList {
	addMagnetRecipe(info);
}










