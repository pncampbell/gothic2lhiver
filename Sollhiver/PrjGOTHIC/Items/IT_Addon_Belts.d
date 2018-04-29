
const int Value_ItBE_Addon_Leather_01 = 250;
const int Value_ItBE_Addon_Leather_02 = 250;
const int Value_ItBE_Addon_SLD_01 = 250;
const int Value_ItBE_Addon_NOV_01 = 250;
const int Value_ItBE_Addon_MIL_01 = 250;
const int Value_ItBE_Addon_KDF_01 = 250;
const int Value_ItBE_Addon_MC = 800;
const int Value_ItBE_Addon_STR_5 = 500;
const int Value_ItBE_Addon_STR_10 = 1000;
const int Value_ItBE_Addon_DEX_5 = 500;
const int Value_ItBE_Addon_DEX_10 = 1000;
const int Value_ItBE_Addon_Prot_Edge = 500;
const int Value_ItBE_Addon_Prot_Point = 500;
const int Value_ItBE_Addon_Prot_Magic = 500;
const int Value_ItBE_Addon_Prot_Fire = 500;
const int Value_ItBE_Addon_Prot_EdgPoi = 1000;
const int Value_ItBE_Addon_Prot_Total = 2000;
const int BA_Bonus01 = 5;
const int BA_Bonus02 = 5;
const int Belt_Prot_01 = 5;
const int BeltBonus_STR01 = 5;
const int BeltBonus_STR02 = 10;
const int BeltBonus_DEX01 = 5;
const int BeltBonus_DEX02 = 10;
const int BeltBonus_ProtEdge = 10;
const int BeltBonus_ProtPoint = 10;
const int BeltBonus_ProtMagic = 10;
const int BeltBonus_ProtFire = 10;
const int BeltBonus_ProtEdgPoi = 7;
const int BeltBonus_ProtTotal = 7;

instance ItBE_Addon_Leather_01(C_Item)
{
	name = "Leather armor's belt";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_Leather_01;
	visual = "ItMI_Belt_06.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBE_Addon_Leather_01;
	on_unequip = UnEquip_ItBE_Addon_Leather_01;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = Belt_Prot_01;
	text[2] = NAME_PROT_BLUNT;
	count[2] = Belt_Prot_01;
	text[3] = NAME_Prot_Point;
	count[3] = Belt_Prot_01;
	text[4] = NAME_Addon_BeArLeather;
	count[4] = BA_Bonus01;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBE_Addon_Leather_01()
{
	self.protection[PROT_EDGE] += Belt_Prot_01;
	self.protection[PROT_BLUNT] += Belt_Prot_01;
	self.protection[PROT_POINT] += Belt_Prot_01;
	stat_sworddef = stat_sworddef + (Belt_Prot_01 * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	if(Npc_IsPlayer(self))
	{
		Leather01_Equipped = TRUE;
		if(LeatherArmor_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] += BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus02;
			self.protection[PROT_FIRE] += BA_Bonus02;
			stat_sworddef = stat_sworddef + (BA_Bonus01 * 1);
			Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
		};
	};
};

func void UnEquip_ItBE_Addon_Leather_01()
{
	self.protection[PROT_EDGE] -= Belt_Prot_01;
	self.protection[PROT_BLUNT] -= Belt_Prot_01;
	self.protection[PROT_POINT] -= Belt_Prot_01;
	stat_sworddef = stat_sworddef - (Belt_Prot_01 * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	if(Npc_IsPlayer(self))
	{
		Leather01_Equipped = FALSE;
		if(LeatherArmor_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] -= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus02;
			self.protection[PROT_FIRE] -= BA_Bonus02;
			stat_sworddef = stat_sworddef - (BA_Bonus01 * 1);
			Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
		};
	};
};


instance ItBE_Addon_SLD_01(C_Item)
{
	name = "Mercenary's belt";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_SLD_01;
	visual = "ItMi_Belt_05.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBE_Addon_SLD_01;
	on_unequip = UnEquip_ItBE_Addon_SLD_01;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = Belt_Prot_01;
	text[2] = NAME_PROT_BLUNT;
	count[2] = Belt_Prot_01;
	text[3] = NAME_Prot_Point;
	count[3] = Belt_Prot_01;
	text[4] = NAME_Addon_BeArSLD;
	count[4] = BA_Bonus01;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBE_Addon_SLD_01()
{
	SLD01_Equipped = TRUE;
	self.protection[PROT_EDGE] += Belt_Prot_01;
	self.protection[PROT_BLUNT] += Belt_Prot_01;
	self.protection[PROT_POINT] += Belt_Prot_01;
	stat_sworddef = stat_sworddef + (Belt_Prot_01 * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	if(SLDArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] += BA_Bonus01;
		self.protection[PROT_BLUNT] += BA_Bonus01;
		self.protection[PROT_POINT] += BA_Bonus01;
		self.protection[PROT_MAGIC] += BA_Bonus02;
		self.protection[PROT_FIRE] += BA_Bonus02;
		stat_sworddef = stat_sworddef + (BA_Bonus01 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	};
};

func void UnEquip_ItBE_Addon_SLD_01()
{
	SLD01_Equipped = FALSE;
	self.protection[PROT_EDGE] -= Belt_Prot_01;
	self.protection[PROT_BLUNT] -= Belt_Prot_01;
	self.protection[PROT_POINT] -= Belt_Prot_01;
	stat_sworddef = stat_sworddef - (Belt_Prot_01 * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	if(SLDArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] -= BA_Bonus01;
		self.protection[PROT_BLUNT] -= BA_Bonus01;
		self.protection[PROT_POINT] -= BA_Bonus01;
		self.protection[PROT_MAGIC] -= BA_Bonus02;
		self.protection[PROT_FIRE] -= BA_Bonus02;
		stat_sworddef = stat_sworddef - (BA_Bonus01 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	};
};


instance ItBE_Addon_NOV_01(C_Item)
{
	name = "Sash of preparedness";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_NOV_01;
	visual = "ItMi_Belt_02.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBE_Addon_NOV_01;
	on_unequip = UnEquip_ItBE_Addon_NOV_01;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = Belt_Prot_01;
	text[2] = NAME_PROT_BLUNT;
	count[2] = Belt_Prot_01;
	text[3] = NAME_Prot_Point;
	count[3] = Belt_Prot_01;
	text[4] = NAME_Addon_BeArNOV;
	count[4] = BA_Bonus01;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBE_Addon_NOV_01()
{
	NOV01_Equipped = TRUE;
	self.protection[PROT_EDGE] += Belt_Prot_01;
	self.protection[PROT_BLUNT] += Belt_Prot_01;
	self.protection[PROT_POINT] += Belt_Prot_01;
	stat_sworddef = stat_sworddef + (Belt_Prot_01 * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	if(NOVArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] += BA_Bonus01;
		self.protection[PROT_BLUNT] += BA_Bonus01;
		self.protection[PROT_POINT] += BA_Bonus01;
		self.protection[PROT_MAGIC] += BA_Bonus02;
		self.protection[PROT_FIRE] += BA_Bonus02;
		stat_sworddef = stat_sworddef + (BA_Bonus01 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	};
};

func void UnEquip_ItBE_Addon_NOV_01()
{
	NOV01_Equipped = FALSE;
	self.protection[PROT_EDGE] -= Belt_Prot_01;
	self.protection[PROT_BLUNT] -= Belt_Prot_01;
	self.protection[PROT_POINT] -= Belt_Prot_01;
	stat_sworddef = stat_sworddef - (Belt_Prot_01 * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	if(NOVArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] -= BA_Bonus01;
		self.protection[PROT_BLUNT] -= BA_Bonus01;
		self.protection[PROT_POINT] -= BA_Bonus01;
		self.protection[PROT_MAGIC] -= BA_Bonus02;
		self.protection[PROT_FIRE] -= BA_Bonus02;
		stat_sworddef = stat_sworddef - (BA_Bonus01 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	};
};


instance ItBE_Addon_MIL_01(C_Item)
{
	name = "Militia belt";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_MIL_01;
	visual = "ItMi_Belt_03.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBE_Addon_MIL_01;
	on_unequip = UnEquip_ItBE_Addon_MIL_01;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = Belt_Prot_01;
	text[2] = NAME_PROT_BLUNT;
	count[2] = Belt_Prot_01;
	text[3] = NAME_Prot_Point;
	count[3] = Belt_Prot_01;
	text[4] = NAME_Addon_BeArMIL;
	count[4] = BA_Bonus01;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBE_Addon_MIL_01()
{
	MIL01_Equipped = TRUE;
	self.protection[PROT_EDGE] += Belt_Prot_01;
	self.protection[PROT_BLUNT] += Belt_Prot_01;
	self.protection[PROT_POINT] += Belt_Prot_01;
	stat_sworddef = stat_sworddef + (Belt_Prot_01 * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	if(MILArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] += BA_Bonus01;
		self.protection[PROT_BLUNT] += BA_Bonus01;
		self.protection[PROT_POINT] += BA_Bonus01;
		self.protection[PROT_MAGIC] += BA_Bonus02;
		self.protection[PROT_FIRE] += BA_Bonus02;
		stat_sworddef = stat_sworddef + (BA_Bonus01 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	};
};

func void UnEquip_ItBE_Addon_MIL_01()
{
	MIL01_Equipped = FALSE;
	self.protection[PROT_EDGE] -= Belt_Prot_01;
	self.protection[PROT_BLUNT] -= Belt_Prot_01;
	self.protection[PROT_POINT] -= Belt_Prot_01;
	stat_sworddef = stat_sworddef - (Belt_Prot_01 * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	if(MILArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] -= BA_Bonus01;
		self.protection[PROT_BLUNT] -= BA_Bonus01;
		self.protection[PROT_POINT] -= BA_Bonus01;
		self.protection[PROT_MAGIC] -= BA_Bonus02;
		self.protection[PROT_FIRE] -= BA_Bonus02;
		stat_sworddef = stat_sworddef - (BA_Bonus01 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	};
};


instance ItBE_Addon_KDF_01(C_Item)
{
	name = "Sash of Fire";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_KDF_01;
	visual = "ItMi_Belt_02.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBE_Addon_KDF_01;
	on_unequip = UnEquip_ItBE_Addon_KDF_01;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = Belt_Prot_01;
	text[2] = NAME_PROT_BLUNT;
	count[2] = Belt_Prot_01;
	text[3] = NAME_Prot_Point;
	count[3] = Belt_Prot_01;
	text[4] = NAME_Addon_BeArKDF;
	count[4] = BA_Bonus01;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBE_Addon_KDF_01()
{
	KDF01_Equipped = TRUE;
	self.protection[PROT_EDGE] += Belt_Prot_01;
	self.protection[PROT_BLUNT] += Belt_Prot_01;
	self.protection[PROT_POINT] += Belt_Prot_01;
	stat_sworddef = stat_sworddef + (Belt_Prot_01 * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	if(KDFArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] += BA_Bonus01;
		self.protection[PROT_BLUNT] += BA_Bonus01;
		self.protection[PROT_POINT] += BA_Bonus01;
		self.protection[PROT_MAGIC] += BA_Bonus02;
		self.protection[PROT_FIRE] += BA_Bonus02;
		stat_sworddef = stat_sworddef + (BA_Bonus01 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	};
};

func void UnEquip_ItBE_Addon_KDF_01()
{
	KDF01_Equipped = FALSE;
	self.protection[PROT_EDGE] -= Belt_Prot_01;
	self.protection[PROT_BLUNT] -= Belt_Prot_01;
	self.protection[PROT_POINT] -= Belt_Prot_01;
	stat_sworddef = stat_sworddef - (Belt_Prot_01 * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	if(KDFArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] -= BA_Bonus01;
		self.protection[PROT_BLUNT] -= BA_Bonus01;
		self.protection[PROT_POINT] -= BA_Bonus01;
		self.protection[PROT_MAGIC] -= BA_Bonus02;
		self.protection[PROT_FIRE] -= BA_Bonus02;
		stat_sworddef = stat_sworddef - (BA_Bonus01 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	};
};


instance ItBE_Addon_MC(C_Item)
{
	name = "Minecrawler belt";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_MC;
	visual = "ItMi_Belt_08.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBE_Addon_MC;
	on_unequip = UnEquip_ItBE_Addon_MC;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = Belt_Prot_01;
	text[2] = NAME_PROT_BLUNT;
	count[2] = Belt_Prot_01;
	text[3] = NAME_Prot_Point;
	count[3] = Belt_Prot_01;
	text[4] = NAME_Addon_BeArMC;
	count[4] = BA_Bonus01;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBE_Addon_MC()
{
	MC_Equipped = TRUE;
	self.protection[PROT_EDGE] += Belt_Prot_01;
	self.protection[PROT_BLUNT] += Belt_Prot_01;
	self.protection[PROT_POINT] += Belt_Prot_01;
	stat_sworddef = stat_sworddef + (Belt_Prot_01 * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	if(MCArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] += BA_Bonus01;
		self.protection[PROT_BLUNT] += BA_Bonus01;
		self.protection[PROT_POINT] += BA_Bonus01;
		self.protection[PROT_MAGIC] += BA_Bonus02;
		self.protection[PROT_FIRE] += BA_Bonus02;
		stat_sworddef = stat_sworddef + (BA_Bonus01 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	};
};

func void UnEquip_ItBE_Addon_MC()
{
	MC_Equipped = FALSE;
	self.protection[PROT_EDGE] -= Belt_Prot_01;
	self.protection[PROT_BLUNT] -= Belt_Prot_01;
	self.protection[PROT_POINT] -= Belt_Prot_01;
	stat_sworddef = stat_sworddef - (Belt_Prot_01 * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	if(MCArmor_Equipped == TRUE)
	{
		self.protection[PROT_EDGE] -= BA_Bonus01;
		self.protection[PROT_BLUNT] -= BA_Bonus01;
		self.protection[PROT_POINT] -= BA_Bonus01;
		self.protection[PROT_MAGIC] -= BA_Bonus02;
		self.protection[PROT_FIRE] -= BA_Bonus02;
		stat_sworddef = stat_sworddef - (BA_Bonus01 * 1);
		Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
	};
};


instance ItBe_Addon_STR_5(C_Item)
{
	name = "Belt of strength";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_STR_5;
	visual = "ItMi_Belt_08.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBe_Addon_STR_5;
	on_unequip = UnEquip_ItBe_Addon_STR_5;
	description = name;
	text[2] = NAME_Bonus_Str;
	count[2] = BeltBonus_STR01;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBe_Addon_STR_5()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,BeltBonus_STR01);
};

func void UnEquip_ItBe_Addon_STR_5()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,-BeltBonus_STR01);
};


instance ItBe_Addon_STR_10(C_Item)
{
	name = "Belt of major strength";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_STR_10;
	visual = "ItMi_Belt_05.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBe_Addon_STR_10;
	on_unequip = UnEquip_ItBe_Addon_STR_10;
	description = name;
	text[2] = NAME_Bonus_Str;
	count[2] = BeltBonus_STR02;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBe_Addon_STR_10()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,BeltBonus_STR02);
};

func void UnEquip_ItBe_Addon_STR_10()
{
	Npc_ChangeAttribute(self,ATR_STRENGTH,-BeltBonus_STR02);
};


instance ItBe_Addon_DEX_5(C_Item)
{
	name = "Belt of dexterity";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_DEX_5;
	visual = "ItMi_Belt_08.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBe_Addon_DEX_5;
	on_unequip = UnEquip_ItBe_Addon_DEX_5;
	description = name;
	text[2] = NAME_Bonus_Dex;
	count[2] = BeltBonus_DEX01;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBe_Addon_DEX_5()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,BeltBonus_DEX01);
};

func void UnEquip_ItBe_Addon_DEX_5()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,-BeltBonus_DEX01);
};


instance ItBe_Addon_DEX_10(C_Item)
{
	name = "Belt of major dexterity";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_DEX_10;
	visual = "ItMi_Belt_05.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBe_Addon_DEX_10;
	on_unequip = UnEquip_ItBe_Addon_DEX_10;
	description = name;
	text[2] = NAME_Bonus_Dex;
	count[2] = BeltBonus_DEX02;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBe_Addon_DEX_10()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,BeltBonus_DEX02);
};

func void UnEquip_ItBe_Addon_DEX_10()
{
	Npc_ChangeAttribute(self,ATR_DEXTERITY,-BeltBonus_DEX02);
};


instance ItBe_Addon_Prot_EDGE(C_Item)
{
	name = "Belt of protection";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_Prot_Edge;
	visual = "ItMi_Belt_02.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBe_Addon_Prot_EDGE;
	on_unequip = UnEquip_ItBe_Addon_Prot_EDGE;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = BeltBonus_ProtEdge;
	text[2] = NAME_PROT_BLUNT;
	count[2] = BeltBonus_ProtEdge;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBe_Addon_Prot_EDGE()
{
	self.protection[PROT_EDGE] += BeltBonus_ProtEdge;
	self.protection[PROT_BLUNT] += BeltBonus_ProtEdge;
	stat_sworddef = stat_sworddef + (BeltBonus_ProtEdge * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
};

func void UnEquip_ItBe_Addon_Prot_EDGE()
{
	self.protection[PROT_EDGE] -= BeltBonus_ProtEdge;
	self.protection[PROT_BLUNT] -= BeltBonus_ProtEdge;
	stat_sworddef = stat_sworddef - (BeltBonus_ProtEdge * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
};


instance ItBe_Addon_Prot_Point(C_Item)
{
	name = "Belt of stone skin";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_Prot_Point;
	visual = "ItMi_Belt_02.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBe_Addon_Prot_Point;
	on_unequip = UnEquip_ItBe_Addon_Prot_Point;
	description = name;
	text[2] = NAME_Prot_Point;
	count[2] = BeltBonus_ProtPoint;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBe_Addon_Prot_Point()
{
	self.protection[PROT_POINT] += BeltBonus_ProtPoint;
};

func void UnEquip_ItBe_Addon_Prot_Point()
{
	self.protection[PROT_POINT] -= BeltBonus_ProtPoint;
};


instance ItBe_Addon_Prot_MAGIC(C_Item)
{
	name = "Belt of magic protection";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_Prot_Magic;
	visual = "ItMi_Belt_02.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBe_Addon_Prot_MAGIC;
	on_unequip = UnEquip_ItBe_Addon_Prot_MAGIC;
	description = name;
	text[2] = NAME_Prot_Magic;
	count[2] = BeltBonus_ProtMagic;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBe_Addon_Prot_MAGIC()
{
	self.protection[PROT_MAGIC] += BeltBonus_ProtMagic;
};

func void UnEquip_ItBe_Addon_Prot_MAGIC()
{
	self.protection[PROT_MAGIC] -= BeltBonus_ProtMagic;
};


instance ItBe_Addon_Prot_FIRE(C_Item)
{
	name = "Belt of firewalker";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_Prot_Fire;
	visual = "ItMi_Belt_02.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBe_Addon_Prot_FIRE;
	on_unequip = UnEquip_ItBe_Addon_Prot_FIRE;
	description = name;
	text[2] = NAME_Prot_Fire;
	count[2] = BeltBonus_ProtFire;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBe_Addon_Prot_FIRE()
{
	self.protection[PROT_FIRE] += BeltBonus_ProtFire;
};

func void UnEquip_ItBe_Addon_Prot_FIRE()
{
	self.protection[PROT_FIRE] -= BeltBonus_ProtFire;
};


instance ItBe_Addon_Prot_EdgPoi(C_Item)
{
	name = "Belt of major protection";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MISSION | ITEM_MULTI;
	value = Value_ItBE_Addon_Prot_EdgPoi;
	visual = "ItMi_Belt_02.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBe_Addon_Prot_EdgPoi;
	on_unequip = UnEquip_ItBe_Addon_Prot_EdgPoi;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = BeltBonus_ProtEdgPoi;
	text[2] = NAME_PROT_BLUNT;
	count[2] = BeltBonus_ProtEdgPoi;
	text[3] = NAME_Prot_Point;
	count[3] = BeltBonus_ProtEdgPoi;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBe_Addon_Prot_EdgPoi()
{
	self.protection[PROT_EDGE] += BeltBonus_ProtEdgPoi;
	self.protection[PROT_BLUNT] += BeltBonus_ProtEdgPoi;
	self.protection[PROT_POINT] += BeltBonus_ProtEdgPoi;
	stat_sworddef = stat_sworddef + (BeltBonus_ProtEdgPoi * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
};

func void UnEquip_ItBe_Addon_Prot_EdgPoi()
{
	self.protection[PROT_EDGE] -= BeltBonus_ProtEdgPoi;
	self.protection[PROT_BLUNT] -= BeltBonus_ProtEdgPoi;
	self.protection[PROT_POINT] -= BeltBonus_ProtEdgPoi;
	stat_sworddef = stat_sworddef - (BeltBonus_ProtEdgPoi * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
};


instance ItBe_Addon_Prot_TOTAL(C_Item)
{
	name = "Protector's belt";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = Value_ItBE_Addon_Prot_Total;
	visual = "ItMi_Belt_02.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = Equip_ItBe_Addon_Prot_TOTAL;
	on_unequip = UnEquip_ItBe_Addon_Prot_TOTAL;
	description = name;
	text[0] = NAME_Prot_Edge;
	count[0] = BeltBonus_ProtTotal;
	text[1] = NAME_PROT_BLUNT;
	count[1] = BeltBonus_ProtTotal;
	text[2] = NAME_Prot_Point;
	count[2] = BeltBonus_ProtTotal;
	text[3] = NAME_Prot_Magic;
	count[3] = BeltBonus_ProtTotal;
	text[4] = NAME_Prot_Fire;
	count[4] = BeltBonus_ProtTotal;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};


func void Equip_ItBe_Addon_Prot_TOTAL()
{
	self.protection[PROT_EDGE] += BeltBonus_ProtTotal;
	self.protection[PROT_BLUNT] += BeltBonus_ProtTotal;
	self.protection[PROT_POINT] += BeltBonus_ProtTotal;
	self.protection[PROT_MAGIC] += BeltBonus_ProtTotal;
	self.protection[PROT_FIRE] += BeltBonus_ProtTotal;
	stat_sworddef = stat_sworddef + (BeltBonus_ProtTotal * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
};

func void UnEquip_ItBe_Addon_Prot_TOTAL()
{
	self.protection[PROT_EDGE] -= BeltBonus_ProtTotal;
	self.protection[PROT_BLUNT] -= BeltBonus_ProtTotal;
	self.protection[PROT_POINT] -= BeltBonus_ProtTotal;
	self.protection[PROT_MAGIC] -= BeltBonus_ProtTotal;
	self.protection[PROT_FIRE] -= BeltBonus_ProtTotal;
	stat_sworddef = stat_sworddef - (BeltBonus_ProtTotal * 1);
	Npc_SetTalentSkill(hero,NPC_TALENT_SWORDDEF,stat_sworddef);
};


instance itbe_addon_enchleather_01(C_Item)
{
	name = "Leather belt";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_BELT | ITEM_MULTI;
	value = 100;
	visual = "ItMI_Belt_06.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	description = name;
	text[5] = NAME_Value;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx = INVCAM_ENTF_MISC2_STANDARD;
};

