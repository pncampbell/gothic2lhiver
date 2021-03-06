
const int Value_Apple = 8;
const int HP_Apple = 5;
const int Value_Cheese = 23;
const int HP_Cheese = 15;
const int Value_Bacon = 50;
const int HP_Bacon = 20;
const int Value_Bread = 20;
const int HP_Bread = 10;
const int Value_Fish = 21;
const int HP_Fish = 5;
const int Value_Rawmeat = 23;
const int HP_RawMeat = 6;
const int Value_Meat = 30;
const int HP_Meat = 12;
const int Value_Stew = 40;
const int HP_Stew = 20;
const int Value_FishSoup = 35;
const int HP_FishSoup = 10;
const int Value_Sausage = 30;
const int HP_Sausage = 12;
const int Value_Honey = 51;
const int HP_Honey = 32;
const int Value_Water = 10;
const int HP_Water = 8;
const int Value_Beer = 20;
const int HP_Beer = 3;
const int Mana_Beer = 1;
const int Value_Booze = 15;
const int HP_Booze = 4;
const int Mana_Booze = 1;
const int Value_Wine = 30;
const int HP_Wine = 2;
const int Mana_Wine = 1;
const int Value_Milk = 15;
const int HP_Milk = 5;
const int Mana_Milk = 1;

instance ItFo_Apple(C_Item)
{
	name = "Apple";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Apple;
	visual = "ItFo_Apple.3DS";
	material = MAT_LEATHER;
	scemeName = "FOOD";
	on_state[0] = Use_Apple;
	description = name;
	text[1] = NAME_BONUS_HPNP;
	count[1] = HP_Apple;
	text[3] = "A fresh apple,";
	text[4] = "firm and juicy.";
	text[5] = NAME_Value;
	count[5] = Value_Apple;
};


func void Use_Apple()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Apple);
	if(Npc_IsPlayer(self))
	{
		Apple_Bonus = Apple_Bonus + 1;
		if(Apple_Bonus == 7)
		{
			Print(PRINT_Eat1);
		};
		if(Apple_Bonus == 15)
		{
			Print(PRINT_Eat2);
		};
		if(Apple_Bonus == 25)
		{
			Print(PRINT_Eat3);
			B_RaiseAttribute(self,ATR_STRENGTH,1);
			Snd_Play("LevelUp");
			Apple_Bonus = 0;
		};
	};
};


instance ItFo_Cheese(C_Item)
{
	name = "Cheese";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Cheese;
	visual = "ItFo_Cheese.3DS";
	material = MAT_LEATHER;
	scemeName = "FOODHUGE";
	on_state[0] = Use_Cheese;
	description = name;
	text[1] = "Restores 7% of health";
	text[5] = NAME_Value;
	count[5] = Value_Cheese;
};


func void Use_Cheese()
{
	var int hpres;
	hpres = 0 + ((self.attribute[ATR_HITPOINTS_MAX] * 7) / 100);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,hpres);
	if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
};


instance ItFo_Bacon(C_Item)
{
	name = "Ham";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Bacon;
	visual = "ItFo_Bacon.3ds";
	material = MAT_LEATHER;
	scemeName = "FOODHUGE";
	on_state[0] = Use_Bacon;
	description = name;
	text[1] = NAME_BONUS_HP_30;
	text[5] = NAME_Value;
	count[5] = Value_Bacon;
};


func void Use_Bacon()
{
	var int hpres;
	hpres = 0 + ((self.attribute[ATR_HITPOINTS_MAX] * 30) / 100);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,hpres);
	if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
};


instance ItFo_Bread(C_Item)
{
	name = "Bread";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Bread;
	visual = "ItFo_Bread.3DS";
	material = MAT_LEATHER;
	scemeName = "FOODHUGE";
	on_state[0] = Use_Bread;
	description = name;
	text[1] = NAME_BONUS_HP_15;
	text[5] = NAME_Value;
	count[5] = Value_Bread;
};


func void Use_Bread()
{
	var int hpres;
	hpres = 0 + ((self.attribute[ATR_HITPOINTS_MAX] * 15) / 100);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,hpres);
	if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
};


instance ItFo_Fish(C_Item)
{
	name = "Fish";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Fish;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemeName = "FOODHUGE";
	on_state[0] = Use_Fish;
	description = name;
	text[1] = "Restores 11 % of health";
	text[5] = NAME_Value;
	count[5] = Value_Fish;
};


func void Use_Fish()
{
	var int hpres;
	hpres = 0 + ((self.attribute[ATR_HITPOINTS_MAX] * 11) / 100);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,hpres);
	if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
};


instance ItFoMuttonRaw(C_Item)
{
	name = "Raw meat";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Rawmeat;
	visual = "ItFoMuttonRaw.3DS";
	material = MAT_LEATHER;
	scemeName = "MEAT";
	on_state[0] = Use_RawMeat;
	description = name;
	text[1] = NAME_BONUS_HP_15;
	text[5] = NAME_Value;
	count[5] = Value_Rawmeat;
};


func void Use_RawMeat()
{
	var int hpres;
	hpres = 0 + ((self.attribute[ATR_HITPOINTS_MAX] * 15) / 100);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,hpres);
	if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
};


instance ItFoMutton(C_Item)
{
	name = "Fried meat";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Meat;
	visual = "ItFoMutton.3DS";
	material = MAT_LEATHER;
	scemeName = "MEAT";
	on_state[0] = Use_Meat;
	description = name;
	text[1] = NAME_BONUS_HP_20;
	text[5] = NAME_Value;
	count[5] = Value_Meat;
};


func void Use_Meat()
{
	var int hpres;
	hpres = 0 + ((self.attribute[ATR_HITPOINTS_MAX] * 20) / 100);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,hpres);
	if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
};


instance ItFo_Stew(C_Item)
{
	name = "Stew";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Stew;
	visual = "ItFo_Stew.3ds";
	material = MAT_WOOD;
	scemeName = "RICE";
	on_state[0] = Use_Stew;
	description = name;
	text[1] = NAME_BONUS_HP_30;
	text[5] = NAME_Value;
	count[5] = Value_Stew;
};


func void Use_Stew()
{
	var int hpres;
	hpres = 0 + ((self.attribute[ATR_HITPOINTS_MAX] * 30) / 100);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,hpres);
	if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
};


instance ItFo_XPStew(C_Item)
{
	name = "Thekla's stew";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Stew;
	visual = "ItFo_Stew_V2.3ds";
	material = MAT_WOOD;
	scemeName = "RICE";
	on_state[0] = Use_XPStew;
	description = name;
	text[1] = NAME_BONUS_HP_40;
	text[2] = NAME_Bonus_Str;
	count[2] = 1;
	text[5] = NAME_Value;
	count[5] = Value_Stew;
};


func void Use_XPStew()
{
	var int hpres;
	hpres = 0 + ((self.attribute[ATR_HITPOINTS_MAX] * 40) / 100);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,hpres);
	if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
	Snd_Play("LevelUp");
	B_RaiseAttribute(self,ATR_STRENGTH,1);
};


instance ItFo_CoragonsBeer(C_Item)
{
	name = "Special beer";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Beer;
	visual = "ItFo_Beer.3DS";
	material = MAT_GLAS;
	scemeName = "POTIONFAST";
	on_state[0] = Use_CoragonsBeerBeer;
	description = name;
	text[1] = NAME_Bonus_HP;
	count[1] = HP_Beer;
	text[2] = NAME_Bonus_Mana;
	count[2] = Mana_Beer;
	text[4] = "Coragon's special beer.";
	text[5] = NAME_Value;
	count[5] = Value_Beer;
};


func void Use_CoragonsBeerBeer()
{
	var string concatText;
	B_RaiseAttribute(self,ATR_MANA_MAX,Mana_Beer);
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Beer);
	Npc_ChangeAttribute(self,ATR_HITPOINTS_MAX,HP_Beer);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Beer);
	concatText = ConcatStrings(PRINT_Learnhitpoints_MAX,IntToString(HP_Beer));
	PrintScreen(concatText,55,-1,FONT_Screen,2);
};


instance ItFo_FishSoup(C_Item)
{
	name = "Fish soup";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_FishSoup;
	visual = "ItFo_FishSoup.3ds";
	material = MAT_WOOD;
	scemeName = "RICE";
	on_state[0] = Use_FishSoup;
	description = name;
	text[1] = NAME_BONUS_HP_25;
	text[5] = NAME_Value;
	count[5] = Value_FishSoup;
};


func void Use_FishSoup()
{
	var int hpres;
	hpres = 0 + ((self.attribute[ATR_HITPOINTS_MAX] * 25) / 100);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,hpres);
	if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
};


instance ItFo_Sausage(C_Item)
{
	name = "Sausage";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Sausage;
	visual = "ItFo_Sausage.3DS";
	material = MAT_LEATHER;
	scemeName = "FOODHUGE";
	on_state[0] = Use_Sausage;
	description = name;
	text[1] = NAME_BONUS_HP_15;
	text[5] = NAME_Value;
	count[5] = Value_Sausage;
};


func void Use_Sausage()
{
	var int hpres;
	hpres = 0 + ((self.attribute[ATR_HITPOINTS_MAX] * 15) / 100);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,hpres);
	if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
};


instance ItFo_Honey(C_Item)
{
	name = "Honey";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Honey;
	visual = "ItFo_Honey.3DS";
	material = MAT_STONE;
	scemeName = "FOODHUGE";
	on_state[0] = Use_Honey;
	description = name;
	text[1] = NAME_BONUS_HPNP;
	count[1] = HP_Honey;
	text[5] = NAME_Value;
	count[5] = Value_Honey;
};


func void Use_Honey()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Honey);
};


instance ItFo_Water(C_Item)
{
	name = "Water";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Water;
	visual = "ItFo_Water.3ds";
	material = MAT_GLAS;
	scemeName = "POTION";
	on_state[0] = Use_Water;
	description = name;
	text[1] = NAME_BONUS_HPNP;
	count[1] = HP_Water;
	text[5] = NAME_Value;
	count[5] = Value_Water;
};


func void Use_Water()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Water);
};


instance ItFo_Beer(C_Item)
{
	name = "Beer";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Beer;
	visual = "ItFo_Beer.3DS";
	material = MAT_GLAS;
	scemeName = "POTIONFAST";
	on_state[0] = Use_Beer;
	description = name;
	text[1] = NAME_BONUS_HPNP;
	count[1] = HP_Beer;
	text[2] = NAME_BONUS_MANANP;
	count[2] = Mana_Beer;
	text[4] = "Dark paladin.";
	text[5] = NAME_Value;
	count[5] = Value_Beer;
};


func void Use_Beer()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Beer);
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Beer);
};


instance ItFo_Booze(C_Item)
{
	name = "Gin";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Booze;
	visual = "ItFo_Booze.3DS";
	material = MAT_GLAS;
	scemeName = "POTION";
	on_state[0] = Use_Booze;
	description = name;
	text[1] = NAME_BONUS_HPNP;
	count[1] = HP_Booze;
	text[2] = NAME_BONUS_MANANP;
	count[2] = Mana_Booze;
	text[5] = NAME_Value;
	count[5] = Value_Booze;
};


func void Use_Booze()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Booze);
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Booze);
};


instance ItFo_Wine(C_Item)
{
	name = "Wine";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Wine;
	visual = "ItFo_Wine.3DS";
	material = MAT_GLAS;
	scemeName = "POTION";
	on_state[0] = Use_Wine;
	description = name;
	text[1] = NAME_BONUS_HPNP;
	count[1] = HP_Wine;
	text[2] = NAME_BONUS_MANANP;
	count[2] = Mana_Wine;
	text[5] = NAME_Value;
	count[5] = Value_Wine;
};


func void Use_Wine()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Wine);
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Wine);
};


instance ItFo_Milk(C_Item)
{
	name = "Milk";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = Value_Milk;
	visual = "ItFo_Milk.3DS";
	material = MAT_GLAS;
	scemeName = "POTION";
	on_state[0] = Use_Milk;
	description = name;
	text[1] = NAME_BONUS_HPNP;
	count[1] = HP_Milk;
	text[2] = NAME_BONUS_MANANP;
	count[2] = Mana_Milk;
	text[5] = NAME_Value;
	count[5] = Value_Milk;
};


func void Use_Milk()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_Milk);
	Npc_ChangeAttribute(self,ATR_MANA,Mana_Milk);
};

