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
local locales = {
  ["enUS"] = {
    ["Alliance"] = "Альянс",
    ["All Quests"] = "Все задания",
    ["and"] = "и",
    ["Area/Zone"] = "Область/Зона",
    ["Buy"] = "Купить",
    ["|cff33ffcc<Click>|r Unfold/Fold Objectives\n|cff33ffcc<Right-Click>|r Show In QuestLog\n|cff33ffcc<Ctrl-Click>|r Show Map / Toggle Color\n|cff33ffcc<Shift-Click>|r Hide Nodes"] = "|cff33ffcc<Клик>|r Развернуть/Свернуть цели\n|cff33ffcc<Правый-Клик>|r Показать в журнале заданий\n|cff33ffcc<Ctrl-Клик>|r Показать карту / Переключить цвет\n|cff33ffcc<Shift-Клик>|r Скрыть узлы",
    ["|cff33ffcc<Ctrl-Click>|r Show Map / Toggle Color\n|cff33ffcc<Shift-Click>|r Hide Nodes"] = "|cff33ffcc<Ctrl-Клик>|r Показать карту / Переключить цвет\n|cff33ffcc<Shift-Клик>|r Скрыть узлы",
    ["|cff33ffcc<Ctrl-Click>|r Show Map / Toggle Color\n|cff33ffcc<Shift-Click>|r Mark As Done"] = "|cff33ffcc<Ctrl-Клик>|r Показать карту / Переключить цвет\n|cff33ffcc<Shift-Клик>|r Отметить как выполненное",
    ["|cff33ffccpf|cffffffffQuest: Tracker is now hidden. Type `/db tracker` to show."] = "|cff33ffccpf|cffffffffQuest: Трекер скрыт. Введите `/db tracker`, чтобы показать его.",
    ["|cff33ffccpf|rQuest: New version available! Have a look at http://shagu.org !"] = "|cff33ffccpf|rQuest: Доступна новая версия! Посмотрите на http://shagu.org !",
    ["Clean"] = "Очистить",
    ["Clean Database Results"] = "Очистить результаты базы данных",
    ["Clean Map"] = "Очистить карту",
    ["Click Node To Change Color"] = "Щелкните узел, чтобы изменить цвет",
    ["Close"] = "Закрыть",
    ["Close & Reload"] = "Закрыть и перезагрузить",
    ["Close Tracker"] = "Закрыть трекер",
    ["Color Map Nodes By Spawn"] = "Разделить цвет точек по целям задания",
    ["Combined"] = "Комбинированные",
    ["Completed Level"] = "Завершено на уровне",
    ["Config"] = "Настройки",
    ["custom items loaded."] = "пользовательские предметы загружены.",
    ["Display addon locales"] = "Показать используемые языки в базе данных",
    ["Display all spawn points of each quest objective and hide summarized cluster icons."] = nil,
    ["Display Available Quest Givers"] = "Показать доступных квестодателей",
    ["Display Current Quest Givers"] = "Показать квестодателей текущих заданий",
    ["Display Event & Daily Quests"] = "Показать задания событий и ежедневные",
    ["Display Level+3 Quest Givers"] = "Показать квестодателей уровень+3",
    ["Display Low Level Quest Givers"] = "Показать низкоуровневых квестодателей",
    ["Display related creatures and NPCs"] = "Отображение связанных существ и NPC",
    ["Display related items"] = "Показать связанные предметы",
    ["Display related objects like ores, herbs, chests, etc."] = "Показать связанные объекты, такие как руды, травы, сундуки и т.д.",
    ["Display related quests"] = "Показать связанные задания",
    ["Distance"] = "Расстояние",
    ["Do you really want to reset everything?"] = "Вы действительно хотите все сбросить?",
    ["Do you really want to reset the caches?"] = "Вы действительно хотите сбросить кэш?",
    ["Do you really want to reset the configuration?"] = "Вы действительно хотите сбросить настройки?",
    ["Do you really want to reset the quest history?"] = "Вы действительно хотите сбросить историю заданий?",
    ["Draw Favorites On Login"] = "Отображать в базе данных избранное\nпри входе в игру",
    ["Enable Minimap Button"] = "Включить кнопку на миникарте",
    ["Enable Minimap Nodes"] = "Включить узлы на миникарте",
    ["Enable Quest Link Support"] = "Включить ссылки на задания",
    ["Enable Quest Log Buttons"] = "Включить кнопки в журнале заданий",
    ["Enable Quest Tracker"] = "Включить отслеживание заданий",
    ["Enable World Map Menu"] = "Включить выпадающее меню на карте мира",
    ["Exploration Mark"] = "Отметка исследования", --?
    ["Explore"] = "Исследовать",
    ["Explore |cff33ffcc%s|r"] = "Исследуйте |cff33ffcc%s|r",
    ["Friendly"] = "Дружелюбный",
    ["General"] = "Общие",
    ["Herbalism"] = "Травничество",
    ["Hide"] = "Скрыть",
    ["Hide browser window"] = "Закрыть окно базы данных",
    ["Hide Quests"] = "Скрыть задания",
    ["Highlight Nodes On Mouseover"] = "Выделение узлов при наведении",
    ["Hold <Ctrl> To Hide Cluster"] = "Удерживайте <Ctrl>, чтобы скрыть кластер",
    ["Hold <Ctrl> To Hide Minimap Nodes"] = "Удерживайте <Ctrl>, чтобы скрыть узлы миникарты",
    ["Horde"] = "Орда",
    ["Hostile"] = "Враждебный",
    ["Include Quest Enders"] = "Включить в маршрут завершение задания",
    ["Include Quest Starters"] = "Включить в маршрут начало задания",
    ["Include Unified Quest Locations"] = "Включить в маршрут маркеры задания",
    ["Interact with |cff33ffcc%s|r"] = "Взаимодействуйте с |cff33ffcc%s|r",
    ["Interact with |cff33ffcc%s|r to complete |cffffcc00[?]|cff33ffcc %s|r"] = "Взаимодействуйте с |cff33ffcc%s|r, чтобы завершить |cffffcc00[?]|cff33ffcc %s|r",
    ["Interact with |cff33ffcc%s|r to obtain |cffffcc00[!]|cff33ffcc %s|r"] = "Взаимодействуйте с |cff33ffcc%s|r, чтобы получить |cffffcc00[!]|cff33ffcc %s|r",
    ["Items"] = "Предметы",
    ["Journal"] = "Журнал",
    ["Kill |cff33ffcc%s|r"] = "Убейте |cff33ffcc%s|r",
    ["Left-Click"] = "Левый-Клик",
    ["Level"] = "Уровень",
    ["Locales"] = "Языки",
    ["Location"] = "Локация",
    ["Loot"] = "Добыча",
    ["Loot and/or Use |cff33ffcc[%s]|r from |cff33ffcc%s|r"] = "Добудьте и/или используйте |cff33ffcc[%s]|r из/на |cff33ffcc%s|r",
    ["Loot |cff33ffcc[%s]|r from |cff33ffcc%s|r"] = "Добудьте |cff33ffcc[%s]|r из |cff33ffcc%s|r",
    ["Looted from"] = "Добывается из",
    ["Manual Selection"] = "Выбранные вручную",
    ["Map & Minimap"] = "Карта и миникарта",
    ["Minimap Node Transparency"] = "Прозрачность узлов на миникарте",
    ["Minimum Item Drop Chance"] = "Искать предметы в базе данных с шансом\nвыпадения не ниже",
    ["Mining"] = "Горное дело",
    ["Move Button"] = "Перемещение кнопки",
    ["N/A"] = "Н/Д",
    ["Navigation Arrow"] = "Навигационная стрелка",
    ["Node Fade Transparency"] = "Прозрачность при затухании узла",
    ["Object"] = "Объект",
    ["Objects"] = "Объекты",
    ["Online Search"] = "Поиск онлайн",
    ["Only show cluster icons with summarized objective locations based on spawn points"] = nil,
    ["Open Browser"] = "Открыть базу данных",
    ["Open Configuration"] = "Открыть настройки",
    ["Open Database Browser"] = "Открыть базу данных",
    ["Open Settings"] = "Открыть настройки",
    ["others"] = "других",
    ["Please select your preferred |cff33ffccpf|cffffffffQuest|r mode:"] = "Пожалуйста, выберите предпочитаемый режим |cff33ffccpf|cffffffffQuest|r:",
    ["Query the server for completed quests"] = "Запросить сервер на предмет выполненных квестов",
    ["Quest End"] = "Завершает задание",
    ["Quest history migration completed."] = "Перенос истории заданий завершен.",
    ["Questing"] = "Задания",
    ["Quest Level"] = "Уровень задания",
    ["Quest Objective Icons (Mini Map)"] = "Значки целей квеста (мини-карта)",
    ["Quest Objective Icons (World Map)"] = "Значки целей квеста (карта-мира)",
    ["Quest Objective Spawn Points (Mini Map)"] = "Точки появления цели квеста (мини-карта)",
    ["Quest Objective Spawn Points (World Map)"] = "Точки появления цели квеста (карта-мира)",
    ["Quests"] = "Задания",
    ["Quest Start"] = "Начинает задание",
    ["Quest Tracker Font Size"] = "Размер шрифта трекера",
    ["Quest Tracker Unfold Objectives"] = "Квест-трекер разворачивать цели",
    ["Quest Tracker Visibility"] = "Прозрачность трекера",
    ["Reaction"] = "Реакция",
    ["Remove all manually searched objects from the map"] = "Удалить с карты все объекты, найденные вручную",
    ["Required"] = "Требуется",
    ["Required Level"] = "Требуемый уровень",
    ["Reset"] = "Сброс",
    ["Reset Cache"] = "Сбросить кэш",
    ["Reset Configuration"] = "Сбросить настройки",
    ["Reset Everything"] = "Сбросить все",
    ["Reset Language"] = "Сбросить язык",
    ["Reset Map"] = "Сбросить карту",
    ["Reset Quest History"] = "Сбросить историю заданий",
    ["Respawn"] = "Перерождение",
    ["Right-Click"] = "Правый-Клик",
    ["Routes"] = "Маршруты",
    ["Scanning server for items..."] = "Сканирование предметов сервера...",
    ["Scan the server for custom items"] = "Сканировать сервер для добавления нестандартных предметов",
    ["Search"] = "Поиск",
    ["Search item vendors"] = "Поиск торговца",
    ["Search loot"] = "Поиск предмета",
    ["Search object"] = "Поиск объекта",
    ["Search unit"] = "Поиск юнита",
    ["Server scan started..."] = "Сканирование сервера запущено...",
    ["Shift-Click"] = "Shift-Клик",
    ["Show"] = "Показать",
    ["Show all chests on map"] = "Показать все сундуки на карте",
    ["Show all quests on map"] = "Показать все задания на карте",
    ["Show all rare mobs of Level [min] to [max]"] = "Показать всех редких мобов уровней [min] - [max]",
    ["Show all taxi nodes of [faction]"] = "Показать на карте всех распорядителей полетов для фракции {horde, alliance}",
    ["Show Arrow Along Routes"] = "Показать стрелку вдоль маршрутов",
    ["Show cluster icons with summarized locations and also display all spawn points of each quest objective"] = nil,
    ["Show configuration interface"] = "Показать настройки",
    ["Show Current Quests"] = "Показать текущие задания",
    ["Show Database IDs"] = "Показать ID",
    ["Show database interface"] = "Показать базу данных",
    ["Show Database Results"] = "Показать результаты базы данных",
    ["Show Help On Tooltips"] = "Показать справку в подсказках",
    ["Show herbs with an appropriate skill level for your character"] = nil,
    ["Show herbs with skill range of [min] to [max]"] = "Показать травы с диапазоном навыка [min] - [max]",
    ["Show Level On Quest Log"] = "Показать уровень в журнале заданий",
    ["Show Level On Quest Tracker"] = "Показать уровень в трекере",
    ["Show map tracker"] = "Показать трекер карты",
    ["Show mines with an appropriate skill level for your character"] = nil,
    ["Show mines with skill range of [min] to [max]"] = "Показать жилы с диапазоном навыка [min] - [max]",
    ["Show Navigation Arrow"] = "Показать стрелку навигации",
    ["Show navigation arrow that points you to the nearest quest location."] = "Покажите стрелку навигации, указывающую на ближайшее место квеста.",
    ["Show quest arrow"] = "Показать стрелку квеста",
    ["Show Quest Givers"] = "Показать квестодателей",
    ["Show quest journal"] = "Показать журнал заданий",
    ["Show Route Between Objects"] = "Показать маршрут между объектами",
    ["Show Route On Minimap"] = "Показать маршрут на миникарте",
    ["Show specific quest"] = "Показать определенное задание",
    ["Show Tooltips"] = "Показать подсказки",
    ["Simple Markers"] = "Простые маркеры",
    ["Sold by"] = "Продается у",
    ["Spawn Points"] = "Точки появления",
    ["Speak with |cff33ffcc%s|r to complete |cffffcc00[?]|cff33ffcc %s|r"] = "Поговорите с |cff33ffcc%s|r, чтобы завершить |cffffcc00[?]|cff33ffcc %s|r",
    ["Speak with |cff33ffcc%s|r to obtain |cffffcc00[!]|cff33ffcc %s|r"] = "Поговорите с |cff33ffcc%s|r, чтобы начать |cffffcc00[!]|cff33ffcc %s|r",
    ["Talk to |cff33ffcc%s|r"] = "Поговорить с |cff33ffcc%s|r",
    ["Toggle completed quest browser"] = "Переключить журнал завершенных заданий",
    ["Too many entries. Results shown"] = "Слишком много записей. Показано результатов",
    ["Tracked Quests"] = "Отслеживаемые",
    ["Translate"] = "Перевод",
    ["Trigger"] = "Триггер",
    ["Type"] = "Тип",
    ["Unit"] = "Юнит",
    ["Units"] = "Юниты",
    ["Use |cff33ffcc%s|r at |cff33ffcc%s|r"] = "Используйте |cff33ffcc%s|r у |cff33ffcc%s|r",
    ["Use |cff33ffcc%s|r on |cff33ffcc%s|r"] = "Используйте |cff33ffcc%s|r на |cff33ffcc%s|r",
    ["Use Cut-Out Minimap Node Icons"] = "Вырезанные значки узлов миникарты",
    ["Use Cut-Out World Map Node Icons"] = "Вырезанные значки узлов карты мира",
    ["Use Monochrome Cluster Icons"] = "Монохромный кластер значков",
    ["Use Quest Item at |cff33ffcc%s|r"] = "Используйте предмет задания на |cff33ffcc%s|r",
    ["User Data"] = "Данные пользователя",
    ["Use <Shift>-Click To Mark Quest As Done"] = "Используйте <Shift>-Клик, чтобы пометить задание как выполненное",
    ["Use <Shift>-Click To Remove Nodes"] = "Используйте <Shift>-Клик, чтобы удалить узлы",
    ["Vendor"] = "Торговец",
    ["World Map Node Transparency"] = "Прозрачность узлов на карте мира",
    ["You already did this quest."] = "Вы уже выполнили это задание.",
    ["You are on this quest."] = "Вы выполняете это задание.",
    ["You don't have this quest."] = "У Вас нет этого задания.",
  },
}



pfQuest_Loc = setmetatable(locales[GetLocale()] or {}, { __index = function(tab,key)
 local value = tostring(key)
 rawset(tab,key,value)
 return value
end})

local L = pfQuest_Loc

-- welcome/init popup dialog
  -- welcome title
pfQuestInit.title:SetText(L["Please select your preferred |cff33ffccpf|cffffffffQuest|r mode:"])

  -- questing mode
  local buttons = {
    { caption = L["Simple Markers"], 
      tooltip = L["Only show cluster icons with summarized objective locations based on spawn points"] },
    { caption = L["Combined"], 
      tooltip = L["Show cluster icons with summarized locations and also display all spawn points of each quest objective"] },
    { caption = L["Spawn Points"], 
      tooltip = L["Display all spawn points of each quest objective and hide summarized cluster icons."] },
  }

  for i, button in pairs(buttons) do
    pfQuestInit[i].caption:SetText(button.caption)

    local OnEnter = pfQuestInit[i]:GetScript("OnEnter")
    pfQuestInit[i]:SetScript("OnEnter", function()
      if OnEnter then OnEnter() end
      GameTooltip_SetDefaultAnchor(GameTooltip, this)

      GameTooltip:SetText(this.caption:GetText())
      GameTooltip:AddLine(buttons[this:GetID()].tooltip, 1, 1, 1, true)
      GameTooltip:SetWidth(100)
      GameTooltip:Show()
    end)
  end
  -- show arrows
  pfQuestInit.checkbox.caption:SetText(L["Show Navigation Arrow"])
  pfQuestInit.checkbox:SetScript("OnEnter", function()
    GameTooltip_SetDefaultAnchor(GameTooltip, this)
    GameTooltip:SetText(L["Navigation Arrow"])
    GameTooltip:AddLine(L["Show navigation arrow that points you to the nearest quest location."], 1, 1, 1, true)
    GameTooltip:SetWidth(100)
    GameTooltip:Show()
  end)

  -- save button
  pfQuestInit.save.text:SetText(L["Save & Close"])

-- Reload all pfQuest internal database shortcuts
pfDatabase:Reload()