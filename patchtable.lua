-- Initialize all static variables
local loc = GetLocale()
local dbs = { "items", "quests", "objects", "units", "professions" }

-- Patch databases to merge TurtleWoW data
local function patchtable(base, diff)
  for k, v in pairs(diff) do
      base[k] = v
  end
end

local loc_core, loc_update
for _, db in pairs(dbs) do
  for loc, _ in pairs(pfDB.locales) do
    if pfDB[db][loc] then
      loc_update = pfDB[db]["ruRU"] or pfDB[db]["enUS"]
      patchtable(pfDB[db][loc], loc_update)
    end
  end
end


-- Reload all pfQuest internal database shortcuts
pfDatabase:Reload()