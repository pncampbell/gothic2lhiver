
const int Value_SwordBlade = 50;
const int Value_SwordBladeHot = 50;
const int Value_SwordRawHot = 50;
const int Value_SwordRaw = 50;
const int Value_Brush = 3;
const int Value_Flask = 10;
const int Value_Stomper = 3;
const int Value_Pan = 20;
const int Value_Saw = 90;
const int Value_Broom = 10;
const int Value_Rake = 10;
const int Value_Hammer = 90;
const int Value_Scoop = 13;
const int Value_Nugget = 300;
const int Value_Joint = 30;
const int Value_Alarmhorn = 10;
const int Value_Lute = 150;
const int Value_Gold = 1;
const int Value_RuneBlank = 100;
const int Value_Sulfur = 20;
const int Value_Quartz = 20;
const int Value_Pitch = 20;
const int Value_Rockcrystal = 30;
const int Value_Aquamarine = 100;
const int Value_HolyWater = 20;
const int Value_Coal = 15;
const int Value_DarkPearl = 1100;
const int VALUE_ItMi_ApfelTabak = 10;
const int VALUE_ItMi_PilzTabak = 10;
const int VALUE_ItMi_SumpfTabak = 10;
const int VALUE_ItMi_DoppelTabak = 10;
const int VALUE_ItMi_HonigTabak = 10;
const int Value_SilverRing = 120;
const int Value_SilverNecklace = 200;
const int Value_SilverCandleHolder = 50;
const int Value_SilverPlate = 100;
const int Value_SilverCup = 100;
const int Value_SilverChalice = 250;
const int Value_GoldPlate = 200;
const int Value_GoldRing = 250;
const int Value_GoldNecklace = 300;
const int Value_GoldCandleHolder = 120;
const int Value_GoldCup = 350;
const int Value_BloodCup = 200;
const int Value_GoldChalice = 500;
const int Value_GoldChest = 750;
const int Value_JeweleryChest = 1000;
const int Value_InnosStatue = 100;
const int Value_Sextant = 1500;

instance ItMi_Stomper(C_Item)
{
	name = "Weed masher";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Stomper;
	visual = "ItMi_Stomper.3DS";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_RuneBlank(C_Item)
{
	name = "Blank Rune";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_RuneBlank;
	visual = "ItMi_RuneBlank.3DS";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_Pliers(C_Item)
{
	name = "Mandible";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_RuneBlank;
	visual = "ItMi_Pliers.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance itmi_pliers_armr(C_Item)
{
	name = "";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 0;
	visual = "ItMi_Pliers_Armr.3DS";
	material = MAT_METAL;
	description = name;
};

instance itmi_pliers_smlt(C_Item)
{
	name = "";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 0;
	visual = "ItMi_Pliers_Smlt.3DS";
	material = MAT_METAL;
	description = name;
};

instance itmi_pliers_smlt_2(C_Item)
{
	name = "";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 0;
	visual = "ItMi_Pliers_Smlt_2.3DS";
	material = MAT_METAL;
	description = name;
};

instance ItMi_Flask(C_Item)
{
	name = "Lab water bottle";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Flask;
	visual = "ItMi_Flask.3ds";
	material = MAT_GLAS;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_Hammer(C_Item)
{
	name = "Hammer";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Hammer;
	visual = "ItMi_Hammer.3DS";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance itmi_textile(C_Item)
{
	name = "Textile";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 30;
	visual = "ItMi_Textile_01.3DS";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 80;
	inv_rotz = 10;
	inv_rotx = 140;
};

instance itmi_leather(C_Item)
{
	name = "Leather";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 65;
	visual = "ItMi_Leather_01.3DS";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 105;
	inv_rotz = 145;
	inv_rotx = 40;
};

instance itmi_woodbar(C_Item)
{
	name = "Wooden bar";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 8;
	visual = "ItMi_WoodBar_01.3DS";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 105;
	inv_rotz = 145;
	inv_rotx = 40;
};

instance itmi_woodbar_big(C_Item)
{
	name = "Wooden billet";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 12;
	visual = "ItMi_WoodBar_02.3DS";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 105;
	inv_rotz = 145;
	inv_rotx = 40;
};

instance itmi_branch(C_Item)
{
	name = "Branch";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 0;
	visual = "ITMI_BRANCH.3ds";
	material = MAT_WOOD;
	description = name;
};

instance ItMi_Scoop(C_Item)
{
	name = "Spoon";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Scoop;
	visual = "ItMi_Scoop.3DS";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_Pan(C_Item)
{
	name = "Pan";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Pan;
	visual = "ItMi_Pan.3DS";
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_PanFull(C_Item)
{
	name = "Pan";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Pan;
	visual = "ItMi_PanFull.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_Saw(C_Item)
{
	name = "Saw";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Saw;
	visual = "ItMi_Saw.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMiSwordraw(C_Item)
{
	name = "Raw steel";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_SwordRaw;
	visual = "ItMiSwordraw.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMiSwordrawhot(C_Item)
{
	name = "Red hot steel";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_SwordRawHot;
	visual = "ItMiSwordrawhot.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMiSwordbladehot(C_Item)
{
	name = "";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 0;
	visual = "ItMiSwordbladehot.3DS";
	material = MAT_METAL;
	description = name;
};

instance ItMiSwordblade(C_Item)
{
	name = "";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 0;
	visual = "ItMiSwordblade.3DS";
	material = MAT_METAL;
	description = name;
};

instance itmi_1h_special_01_blade(C_Item)
{
	name = "Red hot blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_1H_Special_01_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Ore longsword'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_1h_special_01_blade_nh(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_1H_Special_01_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Ore longsword'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_2h_special_01_blade(C_Item)
{
	name = "Red hot blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_2H_Special_01_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Ore two-hander'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_2h_special_01_blade_nh(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_2H_Special_01_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Ore two-hander'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_1h_special_02_blade(C_Item)
{
	name = "Red hot blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_1H_Special_02_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Ore bastard sword'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_1h_special_02_blade_nh(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_1H_Special_02_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Ore bastard sword'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_2h_special_02_blade(C_Item)
{
	name = "Red hot blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_2H_Special_02_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Heavy ore two-hander'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_2h_special_02_blade_nh(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_2H_Special_02_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Heavy ore two-hander'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_1h_special_03_blade(C_Item)
{
	name = "Red hot blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_1H_Special_03_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Orcish ore battle sword'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_1h_special_03_blade_nh(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_1H_Special_03_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Orcish ore battle sword'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_2h_special_03_blade(C_Item)
{
	name = "Red hot blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_2H_Special_03_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Heavy orcish ore battle sword'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_2h_special_03_blade_nh(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_2H_Special_03_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Heavy orcish ore battle sword'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_1h_special_04_blade(C_Item)
{
	name = "Red hot blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_1H_Special_04_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Ore Dragonslayer'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_1h_special_04_blade_nh(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_1H_Special_04_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Ore Dragonslayer'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_2h_special_04_blade(C_Item)
{
	name = "Red hot blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_2H_Special_04_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Large ore Dragonslayer'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_2h_special_04_blade_nh(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_2H_Special_04_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Large ore Dragonslayer'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_1h_deathbringer_blade(C_Item)
{
	name = "Red hot blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_1H_DEATHBRINGER_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Deathbringer'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_1h_deathbringer_blade_nh(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_1H_DEATHBRINGER_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Deathbringer'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_2h_deathbringer_blade(C_Item)
{
	name = "Red hot blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_2H_DEATHBRINGER_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Heavy Deathbringer'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance itmi_2h_deathbringer_blade_nh(C_Item)
{
	name = "Unfinished blade";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_2H_DEATHBRINGER_Blade.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Used to forge 'Heavy Deathbringer'";
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_BLADE_STANDARD;
	inv_rotz = INVCAM_Z_BLADE_STANDARD;
	inv_rotx = INVCAM_X_BLADE_STANDARD;
};

instance ItMi_Broom(C_Item)
{
	name = "Broom";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Broom;
	visual = "ItMi_Broom.3DS";
	material = MAT_WOOD;
	scemeName = "BROOM";
	on_state[0] = Use_Broom;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_Broom()
{
	if(Npc_IsPlayer(self) && (Wld_GetPlayerPortalGuild() == GIL_NOV) && (MIS_ParlanFegen == LOG_Running))
	{
		B_Say(self,self,"$NOSWEEPING");
		Print(PRINT_NoSweeping);
	};
};


instance ItMi_Lute(C_Item)
{
	name = "Lute";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Lute;
	visual = "ItMi_Lute.3DS";
	material = MAT_WOOD;
	scemeName = "LUTE";
	on_state[0] = Use_Lute;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_Lute()
{
};


instance ItMi_Brush(C_Item)
{
	name = "Brush";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Brush;
	visual = "ItMi_Brush.3ds";
	material = MAT_WOOD;
	scemeName = "BRUSH";
	on_state[0] = Use_Brush;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};


func void Use_Brush()
{
};


instance ITMI_LWORK_01(C_Item)
{
	name = "";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 0;
	visual = "ItMi_LWORK_01.3ds";
	material = MAT_WOOD;
	description = name;
};

instance ItMi_Joint(C_Item)
{
	name = "A stalk of swampweed";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Joint;
	visual = "ItMi_Joint_US.3ds";
	material = MAT_LEATHER;
	scemeName = "JOINT";
	on_state[0] = Use_Joint;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_RING_STANDARD;
};


func void Use_Joint()
{
	if(Npc_IsPlayer(self))
	{
		Wld_PlayEffect("SLOW_TIME",self,self,0,0,0,FALSE);
	};
};


instance ItMi_Packet(C_Item)
{
	name = "Packet";
	mainflag = ITEM_KAT_NONE;
	flags = 0;
	value = 0;
	visual = "ItMi_Packet.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	description = name;
};


func void UsePacket()
{
};


instance ItMi_Pocket(C_Item)
{
	name = "Leather satchel";
	mainflag = ITEM_KAT_NONE | ITEM_MULTI;
	flags = 0;
	value = 10;
	visual = "ItMi_Pocket.3ds";
	scemeName = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = UsePocket;
	description = name;
	text[2] = "A narrow bag,";
	text[3] = "not very heavy.";
	text[5] = NAME_Value;
	count[5] = value;
};


func void UsePocket()
{
	CreateInvItems(hero,ItMi_Gold,10);
	Print(PRINT_FoundGold10);
	Snd_Play("Geldbeutel");
};


instance ItMi_Nugget(C_Item)
{
	name = "Lump of ore";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Nugget;
	visual = "ItMi_Nugget.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC2_STANDARD;
};

instance ItMi_Gold(C_Item)
{
	name = "Gold";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Gold;
	visual = "ItMi_Gold.3DS";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC2_STANDARD;
};

instance ItMi_OldCoin(C_Item)
{
	name = "Old coin";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = 0;
	visual = "ItMi_OldCoin.3DS";
	material = MAT_METAL;
	description = name;
	inv_zbias = INVCAM_ENTF_MISC2_STANDARD;
};

instance ItMi_GoldCandleHolder(C_Item)
{
	name = "Gold candlestick";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_GoldCandleHolder;
	visual = "ItMi_GoldCandleHolder.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
};

instance ItMi_GoldNecklace(C_Item)
{
	name = "Gold necklace";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_AMULET;
	value = Value_GoldNecklace;
	visual = "ItMi_GoldNecklace.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_RING_STANDARD;
};

instance ItMi_SilverRing(C_Item)
{
	name = "Silver ring";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_RING;
	value = Value_SilverRing;
	visual = "ItMi_SilverRing.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_RING_STANDARD;
	inv_rotz = INVCAM_Z_RING_STANDARD;
	inv_rotx = INVCAM_X_RING_STANDARD;
};

instance ItMi_SilverCup(C_Item)
{
	name = "Silver chalice";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_SilverCup;
	visual = "ItMi_SilverCup.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_SilverPlate(C_Item)
{
	name = "Silver plate";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_SilverPlate;
	visual = "ItMi_SilverPlate.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_GoldPlate(C_Item)
{
	name = "Gold plate";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_GoldPlate;
	visual = "ItMi_GoldPlate.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_GoldCup(C_Item)
{
	name = "Gold chalice";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_GoldCup;
	visual = "ItMi_GoldCup.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_BloodCup_MIS(C_Item)
{
	name = "Blood chalice";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = Value_BloodCup;
	visual = "ItMi_GoldCup.3DS";
	material = MAT_METAL;
	description = name;
	text[3] = "Many people died for this chalice";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_GoldRing(C_Item)
{
	name = "Gold ring";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_RING;
	value = Value_GoldRing;
	visual = "ItMi_GoldRing.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_RING_STANDARD;
	inv_rotz = INVCAM_Z_RING_STANDARD;
	inv_rotx = INVCAM_X_RING_STANDARD;
};

instance ItMi_SilverChalice(C_Item)
{
	name = "Silver dish";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_SilverChalice;
	visual = "ItMi_SilverChalice.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_JeweleryChest(C_Item)
{
	name = "Jewel casket";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_JeweleryChest;
	visual = "ItMi_JeweleryChest.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_GoldChalice(C_Item)
{
	name = "Gold dish";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_GoldChalice;
	visual = "ItMi_GoldChalice.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_GoldChest(C_Item)
{
	name = "Casket";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_GoldChest;
	visual = "ItMi_GoldChest.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_InnosStatue(C_Item)
{
	name = "Statue of Innos";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_InnosStatue;
	visual = "ItMi_InnosStatue.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_Sextant(C_Item)
{
	name = "Sextant";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Sextant;
	visual = "ItMi_Sextant.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_SilverCandleHolder(C_Item)
{
	name = "Silver candlestick";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_SilverCandleHolder;
	visual = "ItMi_SilverCandleHolder.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_SilverNecklace(C_Item)
{
	name = "Silver necklace";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_AMULET;
	value = Value_SilverNecklace;
	visual = "ItMi_SilverNecklace.3DS";
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_Sulfur(C_Item)
{
	name = "Sulfur";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Sulfur;
	visual = "ItMi_Sulfur.3DS";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC2_STANDARD;
};

instance ItMi_Quartz(C_Item)
{
	name = "Glacier quartz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Quartz;
	visual = "ItMi_Quartz.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_RING_STANDARD;
};

instance ItMi_Pitch(C_Item)
{
	name = "Pitch";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Pitch;
	visual = "ItMi_Pitch.3DS";
	material = MAT_GLAS;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_Rockcrystal(C_Item)
{
	name = "Rock crystal";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Rockcrystal;
	visual = "ItMi_Rockcrystal.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_Aquamarine(C_Item)
{
	name = "Acquamarine";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Aquamarine;
	visual = "ItMi_Aquamarine.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC_STANDARD;
};

instance ItMi_HolyWater(C_Item)
{
	name = "Holy water";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_HolyWater;
	visual = "ItMi_HolyWater.3ds";
	material = MAT_GLAS;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_Coal(C_Item)
{
	name = "Coal";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_Coal;
	visual = "ItMi_Coal.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC_STANDARD;
};

instance ItMi_DarkPearl(C_Item)
{
	name = "Black pearl";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = Value_DarkPearl;
	visual = "ItMi_DarkPearl.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC_STANDARD;
};

instance itmi_diamond(C_Item)
{
	name = "Diamond";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1400;
	visual = "ItMi_Diamond.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 150;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_dmndfragments_01(C_Item)
{
	name = "Diamond fragments";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 150;
	visual = "ItMi_Diamond_Fragments.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 150;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_dmnddust_01(C_Item)
{
	name = "Diamond dust";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1100;
	visual = "ItMi_Diamond_Dust.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 125;
	inv_rotx = 180;
	inv_rotz = 180;
};

instance itmi_sapphire(C_Item)
{
	name = "Sapphier";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1200;
	visual = "ItMi_Sapphire.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 150;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_spphrfragments_01(C_Item)
{
	name = "Sapphier fragments";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 110;
	visual = "ItMi_Sapphire_Fragments.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 150;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_spphrdust_01(C_Item)
{
	name = "Sapphier dust";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1000;
	visual = "ItMi_Sapphire_Dust.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 125;
	inv_rotx = 180;
	inv_rotz = 180;
};

instance itmi_emerald(C_Item)
{
	name = "Emerald";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1000;
	visual = "ItMi_Emerald.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 150;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_emrldfragments_01(C_Item)
{
	name = "Emerald fragments";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 90;
	visual = "ItMi_Emerald_Fragments.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 150;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_emrlddust_01(C_Item)
{
	name = "Emerald dust";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 900;
	visual = "ItMi_Emerald_Dust.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 125;
	inv_rotx = 180;
	inv_rotz = 180;
};

instance itmi_ruby(C_Item)
{
	name = "Ruby";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1100;
	visual = "ItMi_Ruby.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 165;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_rubfragments_01(C_Item)
{
	name = "Ruby fragments";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 80;
	visual = "ItMi_Ruby_Fragments.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 165;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_rubdust_01(C_Item)
{
	name = "Ruby dust";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 800;
	visual = "ItMi_Ruby_Dust.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 125;
	inv_rotx = 180;
	inv_rotz = 180;
};

instance itmi_topaz(C_Item)
{
	name = "Topaz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 670;
	visual = "ItMi_Topaz.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 150;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_tpzfragments_01(C_Item)
{
	name = "Topaz fragments";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 60;
	visual = "ItMi_Topaz_Fragments.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 150;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_tpzdust_01(C_Item)
{
	name = "Topaz dust";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 570;
	visual = "ItMi_Topaz_Dust.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 125;
	inv_rotx = 180;
	inv_rotz = 180;
};

instance itmi_amethyst(C_Item)
{
	name = "Amethyst";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 290;
	visual = "ItMi_Amethyst.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 200;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_amthstfragments_01(C_Item)
{
	name = "Amethyst fragments";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 40;
	visual = "ItMi_Amethyst_Fragments.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 200;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_amthstdust_01(C_Item)
{
	name = "Amethyst dust";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 140;
	visual = "ItMi_Amethyst_Dust.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 125;
	inv_rotx = 180;
	inv_rotz = 180;
};

instance itmi_amber(C_Item)
{
	name = "Amber";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 90;
	visual = "ItMi_Amber.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 150;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_ambrfragments_01(C_Item)
{
	name = "Amber fragments";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 40;
	visual = "ItMi_Amber_Fragments.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 150;
	inv_rotz = 0;
	inv_rotx = 90;
};

instance itmi_ambrdust_01(C_Item)
{
	name = "Amber dust";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 60;
	visual = "ItMi_Amber_Dust.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = 125;
	inv_rotx = 180;
	inv_rotz = 180;
};

instance ItMi_ApfelTabak(C_Item)
{
	name = "Apple tobacco";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = VALUE_ItMi_ApfelTabak;
	visual = "ItMi_Pocket.3ds";
	material = MAT_LEATHER;
	description = name;
	text[2] = "A bag of apple tobacco.";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_PilzTabak(C_Item)
{
	name = "Mushroom tobacco";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = VALUE_ItMi_PilzTabak;
	visual = "ItMi_Pocket.3ds";
	material = MAT_LEATHER;
	description = name;
	text[2] = "Dark-mushroom tobacco.";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_DoppelTabak(C_Item)
{
	name = "Double apple";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = VALUE_ItMi_DoppelTabak;
	visual = "ItMi_Pocket.3ds";
	material = MAT_LEATHER;
	description = name;
	text[2] = "Tastes a lot like apple...";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_Honigtabak(C_Item)
{
	name = "Honey tobacco";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = VALUE_ItMi_HonigTabak;
	visual = "ItMi_Pocket.3ds";
	material = MAT_LEATHER;
	description = name;
	text[2] = "Sweet honey tobacco.";
	text[5] = NAME_Value;
	count[5] = value;
};

instance ItMi_SumpfTabak(C_Item)
{
	name = "Herb tobacco";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = VALUE_ItMi_SumpfTabak;
	visual = "ItMi_Pocket.3ds";
	material = MAT_LEATHER;
	description = name;
	text[2] = "Swampweed blend.";
	text[5] = NAME_Value;
	count[5] = value;
};

