#loader nc_preinit

import scripts.nc_script_addons.NTP.coilclasses.ConverterInfo;
import scripts.nc_script_addons.NTP.coilconverterlist.ConverterInfoList;

function registerConverter(info as ConverterInfo){

var naming = info.name;
var lowercase = naming.toLowerCase() ;
mods.nuclearcraft.Registration.registerTurbineCoil(lowercase~"converter",info.efficiency,info.rule);
}

for info in ConverterInfoList{
	registerConverter(info);
}


mods.nuclearcraft.Registration.registerTurbineCoil("baseconverter",0.20,"one basemagnet coil");
mods.nuclearcraft.Registration.registerTurbineCoil("antitritiumconverter",3.00,"one antideuteriumstabilizer coil || one ytterbiumconverter coil");