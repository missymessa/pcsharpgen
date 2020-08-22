-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_essentials\ce_feats.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Bestiary",
  SourceShort="B1",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy8auu",
  SourceDate="2009-10",
})
DefineAbility({
  Name="Ability Focus",
  Category="FEAT",
  AllowMultiple=true,
  Choice={
    Choose=ChooseAbility("Ability Focus", function (character, ability)
      return ((character.HasAbility(ability)) and (ability.IsType("Ability Focus")))
    end),
  },
  Description={
    Format="One of this creature's special attacks is particularly difficult to resist.",
  },
  SourcePage="p.314",
  Stackable=false,
  Benefits={
    {
      FormatString="Choose one of the creature's special attacks. Add +2 to the DC for all saving throws against the special attack on which the creature focuses. Special: A creature can gain this feat multiple times. Its effects do not stack. Each time the creature takes the feat, it applies to a different special attack.",
    },
  },
  Conditions={
    function (character, item)
      return character.HasAnyAbility(function (ability)
        if ability.Category ~= "Ability Focus" then return false end
        if ability.IsAnyType("Ability Focus") then return true end
        return false
      end)
    end,
  },
  Types={
    "General",
  },
})
DefineAbility({
  Name="Awesome Blow",
  Category="FEAT",
  Description={
    Format="This creature can send opponents flying.",
  },
  SourcePage="p.314",
  Benefits={
    {
      FormatString="As a standard action, the creature may perform an awesome blow combat manuever. If the creature's maneuver succeeds against a corporeal opponent smaller than itself, its opponent is knocked flying 10 feet in a direction of the attacking creature's choice and falls prone. The attacking creature can only push the opponent in a straight line, and the opponent can't move closer to the attacking creature than the square it started in. If an obstacle prevents the completion of the opponent's move, the opponent and the obstacle each take 1d6 points of damage, and the opponent is knocked prone in the space adjacent to the obstacle.",
    },
  },
  Conditions={
    function (character, item)
      return 2 <= character.CountAbilities(function (ability)
        if ability.Category ~= "FEAT" then return false end
        if ability.IsAnyType() then return true end
        if ability.Name == "Power Attack" then return true end
        if ability.Name == "Improved Bull Rush" then return true end
        return false
      end)
    end,
    function (character, item)
      return character.Size >= "L"
    end,
    function (character, item)
      return (character.Stats["STR"] >= 25)
    end,
  },
  Types={
    "General",
    "Combat",
  },
})
DefineAbility({
  Name="Craft Construct",
  Category="FEAT",
  Description={
    Format="You can create construct creatures like golems.",
  },
  SourcePage="p.314",
  Benefits={
    {
      FormatString="You can create any construct whose prerequisites you meet. The act of animating a construct takes one day for each 1,000 gp in its market price. To create a construct, you must use up raw materials costing half of its base price, plus the full cost of the basic body created for the construct. Each construct has a special section that summarizes its costs and other prerequisites. A newly created construct has average hit points for its Hit Dice.",
    },
  },
  Conditions={
    function (character, item)
      return 2 <= character.CountAbilities(function (ability)
        if ability.Category ~= "FEAT" then return false end
        if ability.IsAnyType() then return true end
        if ability.Name == "Craft Magic Arms and Armor" then return true end
        if ability.Name == "Craft Wondrous Item" then return true end
        return false
      end)
    end,
    function (character, item)
      return ((character.CountSpellCastingClasses(5))) >= 1 or (character.Variables["CasterLevel_Highest"] >= 5)
    end,
  },
  Types={
    "ItemCreation",
  },
})
DefineAbility({
  Name="Empower Spell-Like Ability ~ Ability",
  Category="FEAT",
  AllowMultiple=true,
  Choice={
    Choose=ChooseAbility("Special Ability", function (character, ability)
      return ((character.HasAbility(ability)) and (ability.IsType("SpellLike")))
    end),
  },
  Description={
    Format="One of this creature's spell-like abilities is particularly potent and powerful.",
  },
  DisplayName="Empower Spell-Like Ability",
  ExtraCondition="Spell-like ability at caster level 6th or higher.",
  SourcePage="p.314",
  Stackable=false,
  Benefits={
    {
      FormatString="Choose one of the creature's spell-like abilities, subject to the restrictions below. The creature can use that ability as an empowered spell-like ability three times per day (or less, if the ability is normally usable only once or twice per day). When a creature uses an empowered spell-like ability, all variable, numeric effects of the spell-like ability are increased by half (+50%%). Saving throws and opposed rolls are not affected. Spell-like abilities without random variables are not affected. The creature can only select a spell-like ability duplicating a spell with a level less than or equal to 1/2 its caster level (round down) - 2. For a summary, see the table in the description of the Quicken Spell-Like Ability feat on page 316. Special: This feat can be taken multiple times. Each time it is taken, the creature can apply it to a different spell-like ability.",
    },
  },
  Types={
    "General",
  },
})
DefineAbility({
  Name="Empower Spell-Like Ability ~ Spell",
  Category="FEAT",
  AllowMultiple=true,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((spell.SpellBook == "Innate"))
    end),
  },
  Description={
    Format="One of this creature's spell-like abilities is particularly potent and powerful.",
  },
  DisplayName="Empower Spell-Like Ability",
  ExtraCondition="Spell-like ability at caster level 6th or higher.",
  SourcePage="p.314",
  Stackable=false,
  Benefits={
    {
      FormatString="Choose one of the creature's spell-like abilities, subject to the restrictions below. The creature can use that ability as an empowered spell-like ability three times per day (or less, if the ability is normally usable only once or twice per day). When a creature uses an empowered spell-like ability, all variable, numeric effects of the spell-like ability are increased by half (+50%%). Saving throws and opposed rolls are not affected. Spell-like abilities without random variables are not affected. The creature can only select a spell-like ability duplicating a spell with a level less than or equal to 1/2 its caster level (round down) - 2. For a summary, see the table in the description of the Quicken Spell-Like Ability feat on page 316. Special: This feat can be taken multiple times. Each time it is taken, the creature can apply it to a different spell-like ability.",
    },
  },
  Types={
    "General",
  },
})
DefineAbility({
  Name="Flyby Attack",
  Category="FEAT",
  Description={
    Format="This creature can make an attack before and after it moves while flying.",
  },
  SourcePage="p.315",
  Benefits={
    {
      FormatString="When flying, the creature can take a move action and another standard action at any point during the move. The creature cannot take a second move action during a round when it makes a flyby attack. Normal: Without this feat, the creature takes a standard action either before or after its move.",
    },
  },
  Conditions={
    function (character, item)
      return (character.HasMovement("Fly", 1))
    end,
  },
  Types={
    "General",
  },
})
DefineAbility({
  Name="Hover",
  Category="FEAT",
  Description={
    Format="This creature can hover in place with ease and can kick up clouds of dust and debris.",
  },
  SourcePage="p.315",
  Benefits={
    {
      FormatString="A creature with this feat can halt its movement while flying, allowing it to hover without needing to make a Fly skill check. If a creature of size Large or larger with this feat hovers within 20 feet of the ground in an area with lots of loose debris, the draft from its wings creates a hemispherical cloud with a radius of 60 feet. The winds generated can snuff torches, small campfires, exposed lanterns, and other small, open flames of non-magical origin. Clear vision within the cloud is limited to 10 feet. Creatures have concealment at 15 to 20 feet (20%% miss chance). At 25 feet or more, creatures have total concealment (50%% miss chance, and opponents cannot use sight to locate the creature). Normal: Without this feat, a creature must make a Fly skill check to hover and the creature does not create a cloud of debris while hovering.",
    },
  },
  Conditions={
    function (character, item)
      return (character.HasMovement("Fly", 1))
    end,
  },
  Types={
    "General",
  },
})
DefineAbility({
  Name="Improved Natural Armor",
  Category="FEAT",
  AllowMultiple=true,
  Choice={
    Choose=ChooseNothing(),
  },
  Description={
    Format="This creature's hide is tougher than most.",
  },
  SourcePage="p.315",
  Stackable=true,
  Benefits={
    {
      FormatString="The creature's natural armor bonus increases by +1. Special: A creature can gain this feat multiple times. Each time the creature takes the feat, its natural armor bonus increases by another point.",
    },
  },
  Bonuses={
    {
      Category="VAR",
      Formula=Formula("1"),
      Type={
        Name="Base",
        Stack=true,
      },
      Variables={
        "AC_Natural_Armor",
      },
    },
  },
  Conditions={
    function (character, item)
      return (character.Stats["CON"] >= 13)
    end,
    function (character, item)
      return (character.Variables["BONUS.COMBAT.AC.NaturalArmor"] >= 1)
    end,
  },
  Types={
    "General",
  },
})
DefineAbility({
  Name="Improved Natural Attack",
  Category="FEAT",
  AllowMultiple=true,
  Choice={
    Choose=ChooseWeaponProficiency(function (character, weapon)
      return ((character.IsProficientWith(weapon)) and (weapon.IsType("Natural")))
    end),
  },
  Description={
    Format="Attacks made by one natural weapon leaves vicious wounds.",
  },
  SourcePage="p.315",
  Benefits={
    {
      FormatString="Choose one of the creature's natural attack forms. The damage for this natural attack increases by one step on the following list, as if the creature's size had increased by one category. Damage dice increase as follows: 1d2, 1d3, 1d4, 1d6, 1d8, 2d6, 3d6, 4d6, 6d6, 8d6, 12d6. A weapon or attack that deals 1d10 points of damage increases as follows: 1d10, 2d8, 3d8, 4d8, 6d8, 8d8, 12d8.",
    },
  },
  Bonuses={
    {
      Category="WEAPONPROF=%LIST",
      Formula=Formula("1"),
      Variables={
        "DAMAGESIZE",
      },
    },
  },
  Conditions={
    function (character, item)
      return character.TotalAttackBonus >= 4
    end,
    function (character, item)
      return (character.IsProficientWithWeaponType("Natural"))
    end,
  },
  Types={
    "General",
  },
})
DefineAbility({
  Name="Multiattack",
  Category="FEAT",
  Description={
    Format="This creature is particularly skilled at making attacks with its natural weapons.",
  },
  SourcePage="p.315",
  Benefits={
    {
      FormatString="The creature's secondary attacks with natural weapons take only a -2 penalty. Normal: Without this feat, the creature's secondary attacks with natural weapons take a -5 penalty.",
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("3"),
      Variables={
        "TOHIT-SECONDARY",
        "TOHIT.NaturalSecondary",
      },
    },
  },
  Conditions={
    function (character, item)
      return 3 <= sum((character.IsProficientWithWeaponType("Natural") and 1 or 0))
    end,
  },
  Types={
    "General",
    "Combat",
  },
})
DefineAbility({
  Name="Multiweapon Fighting",
  Category="FEAT",
  Description={
    Format="This multi-armed creature is skilled at making attacks with multiple weapons.",
  },
  SourcePage="p.315",
  Benefits={
    {
      FormatString="Penalties for fighting with multiple weapons are reduced by -2 with the primary hand and by -6 with off hands. Normal: A creature without this feat takes a -6 penalty on attacks made with its primary hand and a -10 penalty on attacks made with all of its off hands. (It has one primary hand, and all the others are off hands.) See Two-Weapon Fighting in the Pathfinder RPG Core Rulebook. Special: This feat replaces the Two-Weapon Fighting feat for creatures with more than two arms.",
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Formula=Formula("2"),
      Variables={
        "TOHIT-PRIMARY",
      },
    },
    {
      Category="COMBAT",
      Formula=Formula("6"),
      Variables={
        "TOHIT-SECONDARY",
      },
    },
  },
  Conditions={
    function (character, item)
      return character.HandCount >= 3
    end,
    function (character, item)
      return (character.Variables["PreStatScore_DEX"] >= 13) or (character.Variables["FeatDexRequirement"] >= 13)
    end,
  },
  Types={
    "General",
    "Combat",
  },
})
DefineAbility({
  Name="Quicken Spell-Like Ability ~ Ability",
  Category="FEAT",
  AllowMultiple=true,
  Choice={
    Choose=ChooseAbility("Special Ability", function (character, ability)
      return ((character.HasAbility(ability)) and (ability.IsType("SpellLike")))
    end),
  },
  Description={
    Format="This creature can use one of its spell-like abilities with next to no effort.",
  },
  DisplayName="Quicken Spell-Like Ability",
  ExtraCondition="Spell-like ability at caster level 10th or higher.",
  SourcePage="p.315",
  Stackable=false,
  Benefits={
    {
      FormatString="Choose one of the creature's spell-like abilities, subject to the restrictions described in this feat. The creature can use the chosen spell-like ability as a quickened spell-like ability three times per day (or less, if the ability is normally usable only once or twice per day). Using a quickened spell-like ability is a swift action that does not provoke an attack of opportunity. The creature can perform another action-including the use of another spell-like ability (but not another swift action)-in the same round that it uses a quickened spelllike ability. The creature may use only one quickened spell-like ability per round. The creature can only select a spell-like ability duplicating a spell with a level less than or equal to 1/2 its caster level (round down) - 4. For a summary, see the table on page 316. A spell-like ability that duplicates a spell with a casting time greater than 1 full round cannot be quickened. Normal: The use of a spell-like ability normally requires a standard action (at the very least) and provokes an attack of opportunity. Special: This feat can be taken multiple times. Each time it is taken, the creature can apply it to a different one of its spell-like abilities.",
    },
  },
  Types={
    "General",
  },
})
DefineAbility({
  Name="Quicken Spell-Like Ability ~ Spell",
  Category="FEAT",
  AllowMultiple=true,
  Choice={
    Choose=ChooseSpell(function (character, spell)
      return ((spell.SpellBook == "Innate"))
    end),
  },
  Description={
    Format="This creature can use one of its spell-like abilities with next to no effort.",
  },
  DisplayName="Quicken Spell-Like Ability",
  ExtraCondition="Spell-like ability at caster level 10th or higher.",
  SourcePage="p.315",
  Stackable=false,
  Benefits={
    {
      FormatString="Choose one of the creature's spell-like abilities, subject to the restrictions described in this feat. The creature can use the chosen spell-like ability as a quickened spell-like ability three times per day (or less, if the ability is normally usable only once or twice per day). Using a quickened spell-like ability is a swift action that does not provoke an attack of opportunity. The creature can perform another action-including the use of another spell-like ability (but not another swift action)-in the same round that it uses a quickened spelllike ability. The creature may use only one quickened spell-like ability per round. The creature can only select a spell-like ability duplicating a spell with a level less than or equal to 1/2 its caster level (round down) - 4. For a summary, see the table on page 316. A spell-like ability that duplicates a spell with a casting time greater than 1 full round cannot be quickened. Normal: The use of a spell-like ability normally requires a standard action (at the very least) and provokes an attack of opportunity. Special: This feat can be taken multiple times. Each time it is taken, the creature can apply it to a different one of its spell-like abilities.",
    },
  },
  Types={
    "General",
  },
})
DefineAbility({
  Name="Snatch",
  Category="FEAT",
  Description={
    Format="This creature can grab other creatures with ease.",
  },
  SourcePage="p.316",
  Benefits={
    {
      FormatString="The creature can start a grapple when it hits with a claw or bite attack, as though it had the grab ability. If it grapples a creature three or more sizes smaller, it squeezes each round for automatic bite or claw damage with a successful grapple check. A snatched opponent held in the creature's mouth is not allowed a Reflex save against the creature's breath weapon, if it has one. The creature can drop a creature it has snatched as a free action or use a standard action to fling it aside. A flung creature travels 1d6 x 10 feet, and takes 1d6 points of damage per 10 feet traveled. If the creature flings a snatched opponent while flying, the opponent takes this amount or falling damage, whichever is greater.",
    },
  },
  Conditions={
    function (character, item)
      return character.Size >= "H"
    end,
  },
  Types={
    "General",
  },
})
DefineAbility({
  Name="Wingover",
  Category="FEAT",
  Description={
    Format="This creature can make turns with ease while flying.",
  },
  SourcePage="p.316",
  Benefits={
    {
      FormatString="Once each round, a creature with this feat can turn up to 180 degrees as a free action without making a Fly skill check. This free turn does not consume any additional movement from the creature. Normal: A flying creature can turn up to 90 degrees by making a DC 15 Fly skill check and expending 5 feet of movement. A flying creature can turn up to 180 degrees by making a DC 20 Fly skill check and expending 10 feet of movement.",
    },
  },
  Conditions={
    function (character, item)
      return (character.HasMovement("Fly", 1))
    end,
  },
  Types={
    "General",
  },
})