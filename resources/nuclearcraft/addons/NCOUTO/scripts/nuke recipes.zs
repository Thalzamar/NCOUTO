#modloaded trinity

recipes.addShaped("ncoutowitheritecoil", <nuclearcraft:turbine_dynamo_coil_witherite>*2, 
	[[<ore:gemWitherite>, <ore:gemWitherite>, <ore:gemWitherite>],
	[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
	[<ore:gemWitherite>, <ore:gemWitherite>, <ore:gemWitherite>]]);
	
recipes.addShaped("ncoutobaratolcoil", <nuclearcraft:turbine_dynamo_coil_baratol>*2, 
	[[<trinity:solid_baratol>, <trinity:solid_baratol>, <trinity:solid_baratol>],
	[<nuclearcraft:alloy:15>, <nuclearcraft:alloy:1>, <nuclearcraft:alloy:15>],
	[<trinity:solid_baratol>, <trinity:solid_baratol>, <trinity:solid_baratol>]]);
		
recipes.addShaped("ncoutotrinititestator", <nuclearcraft:turbine_rotor_stator_trinitite>*4, 
	[[<nuclearcraft:turbine_rotor_stator>, <ore:gemTrinitite>, <nuclearcraft:turbine_rotor_stator>],
	[<ore:gemTrinitite>, <ore:blockTrinitite>, <ore:gemTrinitite>],
	[<nuclearcraft:turbine_rotor_stator>, <ore:gemTrinitite>, <nuclearcraft:turbine_rotor_stator>]]);
  
 mods.nuclearcraft.Radiation.setRadiationLevel(<nuclearcraft:turbine_rotor_stator_trinitite>, 175.0e-6);
