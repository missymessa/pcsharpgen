-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr__saves.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
DefineSave({
  Name="Fortitude",
  SortKey="1",
  Bonus={
    Category="SAVE",
    Formula=Formula("CON"),
    Variables={
      "Fortitude",
    },
  },
})

DefineSave({
  Name="Reflex",
  SortKey="2",
  Bonus={
    Category="SAVE",
    Formula=Formula("DEX"),
    Variables={
      "Reflex",
    },
  },
})

DefineSave({
  Name="Will",
  SortKey="3",
  Bonus={
    Category="SAVE",
    Formula=Formula("WIS"),
    Variables={
      "Will",
    },
  },
})

