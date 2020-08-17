-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_languages.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineLanguage({
  Name="Abyssal",
  Types={
    "Spoken",
    "Written",
    "Read",
    "Planar",
  },
})

DefineLanguage({
  Name="Aklo",
  Types={
    "Spoken",
    "Written",
    "Read",
  },
})

DefineLanguage({
  Name="Aquan",
  Types={
    "Spoken",
    "Written",
    "Read",
    "Elemental",
  },
})

DefineLanguage({
  Name="Auran",
  Types={
    "Spoken",
    "Written",
    "Read",
    "Elemental",
  },
})

DefineLanguage({
  Name="Celestial",
  Types={
    "Spoken",
    "Written",
    "Read",
    "Planar",
  },
})

DefineLanguage({
  Name="Common",
  Types={
    "Spoken",
    "Written",
    "Read",
    "ModernHumanLanguage",
  },
})

DefineLanguage({
  Name="Draconic",
  Types={
    "Spoken",
    "Written",
    "Read",
  },
})

DefineLanguage({
  Name="Druidic",
  Conditions={
    function (character)
      return (character.Variables["DruidSecretLanguage"] == 1)
    end,
  },
  Types={
    "Spoken",
    "Written",
    "Read",
    "Secret",
  },
})

DefineLanguage({
  Name="Dwarven",
  Types={
    "Spoken",
    "Written",
    "Read",
  },
})

DefineLanguage({
  Name="Elven",
  Types={
    "Spoken",
    "Written",
    "Read",
  },
})

DefineLanguage({
  Name="Giant",
  Types={
    "Spoken",
    "Written",
    "Read",
  },
})

DefineLanguage({
  Name="Gnoll",
  Types={
    "Spoken",
    "Written",
    "Read",
  },
})

DefineLanguage({
  Name="Gnome",
  Types={
    "Spoken",
    "Written",
    "Read",
  },
})

DefineLanguage({
  Name="Goblin",
  Types={
    "Spoken",
    "Written",
    "Read",
  },
})

DefineLanguage({
  Name="Halfling",
  Types={
    "Spoken",
    "Written",
    "Read",
  },
})

DefineLanguage({
  Name="Ignan",
  Types={
    "Spoken",
    "Written",
    "Read",
    "Elemental",
  },
})

DefineLanguage({
  Name="Infernal",
  Types={
    "Spoken",
    "Written",
    "Read",
    "Planar",
  },
})

DefineLanguage({
  Name="Orc",
  Types={
    "Spoken",
    "Written",
    "Read",
  },
})

DefineLanguage({
  Name="Sylvan",
  Types={
    "Spoken",
    "Written",
    "Read",
  },
})

DefineLanguage({
  Name="Terran",
  Types={
    "Spoken",
    "Written",
    "Read",
    "Elemental",
  },
})

DefineLanguage({
  Name="Undercommon",
  Types={
    "Spoken",
    "Written",
    "Read",
  },
})

DefineLanguage({
  Name="Read Lips",
  Types={
    "Spoken",
  },
})

