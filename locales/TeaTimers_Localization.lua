
local ADDON_NAME = ...;
--[[

If you want to be super helpful, you can translate this stuff into whatever non-enUS language you happen to know and we'll credit you.  Please post the translations as a ticket on CurseForge.com (http://wow.curseforge.com/addons/need-to-know/tickets/) or email them to us (lieandswell@yahoo.com). 

Thanks a bunch!  

--]]

local L = LibStub("AceLocale-3.0"):GetLocale("TeaTimers")

TEATIMERS = {};

TEATIMERS.SPELL_POWER_LEGACY_CP = -1
-- Since i've seen the built-in stuff using -2, I'm going to go further negative
TEATIMERS.SPELL_POWER_STAGGER = -1003
TEATIMERS.SPELL_POWER_PRIMARY = -1002

-- Seems like this should already exist somewhere
-- Strings come from the chart on http://www.wowwiki.com/WoW_constants
TEATIMERS.ITEM_NAMES =
{
    HEADSLOT,
    NECKSLOT,
    SHOULDERSLOT,
    SHIRTSLOT,
    CHESTSLOT,
    WAISTSLOT,
    LEGSSLOT,
    FEETSLOT,
    WRISTSLOT,
    HANDSSLOT,
    FINGER0SLOT_UNIQUE,
    FINGER1SLOT_UNIQUE,
    TRINKET0SLOT_UNIQUE,
    TRINKET1SLOT_UNIQUE,
    BACKSLOT,
    MAINHANDSLOT,
    SECONDARYHANDSLOT,
    RANGEDSLOT.."/"..RELICSLOT,
    TABARDSLOT
};


-- Define defaults in enUS
    TEATIMERS.ALTERNATE_POWER = "Alternate Power";
    TEATIMERS.COMBO_POINTS = "Combo Points";
    TEATIMERS.BAR_TOOLTIP1 = "TeaTimers" .. " " .. GetAddOnMetadata(ADDON_NAME, "Version")
    TEATIMERS.BAR_TOOLTIP2 = L["Right click bars to configure."].. "\n".. L["More options in the Blizzard interface options menu."].."\n".. L["Type /teatimers to lock and enable."]
    TEATIMERS.RESIZE_TOOLTIP = L["Click and drag to resize"]

    TEATIMERS.BARMENU_ENABLE = L["Enable bar"]
    TEATIMERS.BARMENU_CHOOSESLOT =  L["Select Equipment Slot"];
    TEATIMERS.BARMENU_CHOOSEPOWER =  L["Select Power Type"]

    TEATIMERS.BARMENU_CHOOSENAME =  L["Choose buff/debuff to time."]
    TEATIMERS.CHOOSENAME_DIALOG =   L["Enter the name of the buff or debuff to time with this bar"]
    TEATIMERS.BARMENU_IMPORTEXPORT = L["Import/Export this bar"]
    TEATIMERS.IMPORTEXPORT_DIALOG = L["The current settings for the bar appear below."]  .. "\n"
            .. L["To copy these settings to the clipboard, press Ctrl+C."].. "\n"
            .. L["To paste the last settings you copied (such as from another bar), press Ctrl+V."].. "\n"
            .. L["Clear this text to reset the bar to the defaults."]

    TEATIMERS.CHOOSE_OVERRIDE_TEXT = L["Normally, the name of the aura/item/spell that activated the bar is displayed."] .. "\n"
            .. L["By entering text here, you can override that text with something else."].. "\n"
            .. L["Leave this blank to use the default behavior."]
    TEATIMERS.BARMENU_CHOOSEUNIT = L["Unit to monitor"]
    TEATIMERS.BARMENU_PLAYER = L["Player"]
    TEATIMERS.BARMENU_TARGET = L["Target"]
    TEATIMERS.BARMENU_FOCUS = L["Focus"]
    TEATIMERS.BARMENU_PET = L["Pet"]
    TEATIMERS.BARMENU_VEHICLE = L["Vehicle"]
    TEATIMERS.BARMENU_TARGETTARGET = L["Target of Target"]
    TEATIMERS.BARMENU_BUFFORDEBUFF = L["Bar Type"]
    TEATIMERS.BARMENU_LAST_RAID = L["Last Raid Recipient"]
    TEATIMERS.BARMENU_SPELLID = L["Use SpellID"]
    TEATIMERS.BARMENU_HELPFUL = L["Buff"]
    TEATIMERS.BARMENU_HARMFUL = L["Debuff"]
    TEATIMERS.BARMENU_ONLYMINE = L["Only show mine"]
    TEATIMERS.BARMENU_BARCOLOR = L["Bar color"]
    TEATIMERS.BARMENU_CLEARSETTINGS = L["Clear settings"]
    TEATIMERS.BARMENU_POWER_PRIMARY = L["Primary"]
    TEATIMERS.BARMENU_POWER_STAGGER = L["Stagger"]
    TEATIMERS.BARMENU_SHOW = L["Show"]
    TEATIMERS.BARMENU_SHOW_ICON = L["Icon"]
    TEATIMERS.BARMENU_SHOW_TEXT = L["Aura Name"]
    TEATIMERS.BARMENU_SHOW_COUNT = L["Stack Count"]
    TEATIMERS.BARMENU_SHOW_TIME = L["Time Remaining"]
    TEATIMERS.BARMENU_SHOW_SPARK = L["Spark"]
    TEATIMERS.BARMENU_SHOW_MYPIP = L["Indicator If Mine"]
    TEATIMERS.BARMENU_SHOW_TEXT_USER = L["Override Aura Name..."]
    TEATIMERS.BARMENU_SHOW_TTN1 = L["First Tooltip Number"]
    TEATIMERS.BARMENU_SHOW_TTN2 = L["Second Tooltip Number"]
    TEATIMERS.BARMENU_SHOW_TTN3 = L["Third Tooltip Number"]


    TEATIMERS.UIPANEL_SUBTEXT1 = L["These options allow you to customize TeaTimers's timer bar groups."]
    TEATIMERS.UIPANEL_BARGROUP = L["Group "]
    TEATIMERS.UIPANEL_NUMBERBARS = L["Number of bars"]
    TEATIMERS.UIPANEL_FIXEDDURATION = L["Max bar duration"]
    TEATIMERS.UIPANEL_LOCK = L["Lock"]
    TEATIMERS.UIPANEL_UNLOCK = L["Unlock"]
    TEATIMERS.UIPANEL_TOOLTIP_ENABLEGROUP = L["Show and enable this group of bars"]
    TEATIMERS.UIPANEL_TOOLTIP_FIXEDDURATION = L["Set the maximum length of bars for this group (in seconds)."]
            .. L["Leave empty to set dynamically per bar."]
    TEATIMERS.UIPANEL_TOOLTIP_BARTEXTURE = L["Choose the texture graphic for timer bars"]
    TEATIMERS.CMD_RESET = L["reset"]

    TEATIMERS.UIPANEL_CONFIGMODE = L["Config mode"]
    TEATIMERS.UIPANEL_CONFIGMODE_TOOLTIP = L["Unlock timer bars and make them configurable"]
    TEATIMERS.UIPANEL_PLAYMODE = L["Play mode"]
    TEATIMERS.UIPANEL_PLAYMODE_TOOLTIP = L["Lock and enable timer bars, making them click-through"]

    TEATIMERS.UIPANEL_APPEARANCE_SUBTEXT1 = L["These options allow you to customize TeaTimers's timer bars."]
    TEATIMERS.UIPANEL_APPEARANCE = L["Appearance"]
    TEATIMERS.UIPANEL_BACKGROUNDCOLOR = L["Background color"]
    TEATIMERS.UIPANEL_BARSPACING = L["Bar spacing"]
    TEATIMERS.UIPANEL_BARPADDING = L["Bar padding"]
    TEATIMERS.UIPANEL_BARTEXTURE = L["Bar texture"]
    TEATIMERS.UIPANEL_BARFONT = L["Bar font"]
    TEATIMERS.UIPANEL_FONT = L["Font"]
    TEATIMERS.UIPANEL_FONT_OUTLINE = L["Font Outline"]


    TEATIMERS.UIPANEL_PROFILES_SUBTEXT1 = L["These options allow you to manage profiles."] .. "\n"
            .. L["Each profile is a complete TeaTimers configuration for one talent spec."] .."\n"
            .. L["By default, profiles are per-character (and have character: in front of their name.) Per-character profiles are only available to this character."]  .. "\n"
            .. L["Profiles can be switched between per-character and per-account so that the same profile can be used by multiple characters on the same account."]


    TEATIMERS.UIPANEL_CURRENTPRIMARY = "Current Primary Profile";
    TEATIMERS.UIPANEL_CURRENTSECONDARY = "Current Secondary Profile";
    TEATIMERS.UIPANEL_PROFILE = "Profile";
    TEATIMERS.UIPANEL_SWITCHPROFILE_TOOLTIP = "Switch to using the currently selected profile";
    TEATIMERS.UIPANEL_DELETEPROFILE_TOOLTIP = "Permanently delete the currently selected profile";
    TEATIMERS.UIPANEL_COPYPROFILE_TOOLTIP   = "Create a new profile based on the currently selected profile";
    TEATIMERS.UIPANEL_PRIVATEPROFILE_TOOLTIP  = "Make the selected profile accessible only to the current character";
    TEATIMERS.UIPANEL_PUBLICPROFILE_TOOLTIP  = "Make the selected profile accessible to all the characters on the same account";
    TEATIMERS.UIPANEL_RENAMEPROFILE_TOOLTIP  = "Change the name of this profile";
    TEATIMERS.UIPANEL_PROFILE_SWITCHTO = "Switch To";
    TEATIMERS.UIPANEL_PROFILE_DELETE = "Delete";
    TEATIMERS.UIPANEL_PROFILE_DUPLICATE = "Duplicate";
    TEATIMERS.UIPANEL_PROFILE_NAMELABEL = "New profile name:";
    TEATIMERS.UIPANEL_PROFILE_RENAME = "Rename";
    TEATIMERS.UIPANEL_PROFILE_MAKEPUBLIC = "To Account";
    TEATIMERS.UIPANEL_PROFILE_MAKEPRIVATE = "Only This Char";

    TEATIMERS.BARMENU_TOTEM = "Totem";
    TEATIMERS.BARMENU_CASTCD = "Spell Cooldown";
    TEATIMERS.BARMENU_BUFFCD = "Internal Cooldown";
    TEATIMERS.BARMENU_USABLE = "Conditional Spell";
    TEATIMERS.BARMENU_EQUIPSLOT = "Equipment Slot";
    TEATIMERS.BARMENU_POWER = "Power (experimental)";
    TEATIMERS.CMD_HIDE = "hide";
    TEATIMERS.CMD_PROFILE = "profile";
    TEATIMERS.CMD_SHOW = "show";
    TEATIMERS.BARMENU_TIMEFORMAT = "Time Format";
    TEATIMERS.FMT_SINGLEUNIT = "Single unit (2 m)";
    TEATIMERS.FMT_TWOUNITS = "Minutes and seconds (01:10)";
    TEATIMERS.FMT_FLOAT = "Fractional Seconds (70.1)";
    TEATIMERS.BARMENU_VISUALCASTTIME = "Visual Cast Time";
    TEATIMERS.BARMENU_VCT_ENABLE = "Enable for this bar";
    TEATIMERS.BARMENU_VCT_COLOR = "Overlay color";
    TEATIMERS.BARMENU_VCT_SPELL = L["Choose cast time by spell"]
    TEATIMERS.BARMENU_VCT_EXTRA = "Set additional time";
    TEATIMERS.CHOOSE_VCT_SPELL_DIALOG = L["Enter the name of a spell (in your spellbook) whose cast time will determine the base length of the visual cast time."]
            .. L["If left blank, the aura name will be used as the spell name."]
            .. L["To force this to be 0, type 0."]

    TEATIMERS.CHOOSE_VCT_EXTRA_DIALOG = L["Enter an amount of seconds that will be added to the cast time of the spell."]
    TEATIMERS.CHOOSE_BLINK_TITLE_DIALOG = L["Enter the text to display on the bar when it is blinking."]
    TEATIMERS.BUFFCD_DURATION_DIALOG = L["Enter the cooldown duration triggered by the buffs watched by this bar."]
    TEATIMERS.BUFFCD_RESET_DIALOG = "Enter the buff (or buffs) to watch for which reset the cooldown to 0.";
    TEATIMERS.USABLE_DURATION_DIALOG = "Enter the cooldown duration triggered by the abilities watched by this bar.";


-- replace with translations, if available
if ( GetLocale() == "deDE" ) then
    -- by sp00n and Fxfighter EU-Echsenkessel
    TEATIMERS.RESIZE_TOOLTIP = "Klicken und ziehen, um die Größe zu ändern";
    TEATIMERS.BARMENU_ENABLE = "Leiste aktivieren";
    TEATIMERS.BARMENU_CHOOSENAME = "Buff/Debuff auswählen";
    TEATIMERS.CHOOSENAME_DIALOG = "Name des Buffs/Debuffs für diesen Balken angeben"
    TEATIMERS.BARMENU_CHOOSEUNIT = "Betroffene Einheit";
    TEATIMERS.BARMENU_PLAYER = "Spieler";
    TEATIMERS.BARMENU_TARGET = "Ziel";
    TEATIMERS.BARMENU_FOCUS = "Fokus";
    TEATIMERS.BARMENU_PET = "Begleiter (Pet)";
    TEATIMERS.BARMENU_VEHICLE = "Vehicle";
    TEATIMERS.BARMENU_TARGETTARGET = "Ziel des Ziels";
    TEATIMERS.BARMENU_BUFFORDEBUFF = "Buff oder Debuff?";
    TEATIMERS.BARMENU_HELPFUL = "Buff";
    TEATIMERS.BARMENU_HARMFUL = "Debuff";
    TEATIMERS.BARMENU_ONLYMINE = "Nur Anzeigen wenn es selbst gezaubert wurde";
    TEATIMERS.BARMENU_BARCOLOR = "Farbe des Balken";
    TEATIMERS.BARMENU_CLEARSETTINGS = "Einstellungen löschen";
    TEATIMERS.UIPANEL_SUBTEXT1 = "Diese Einstellungen ändern die Anzahl und die Gruppierung der Balken.";
    TEATIMERS.UIPANEL_SUBTEXT2 = "Die Darstellung funktioniert auch bei festgesetzen Balken. Wenn sie freigesetzt sind, können die Gruppierungen verschoben und deren Größe verändert werden. Ein Rechtsklick auf einen Balken zeigt weitere Einstellungsmöglichkeiten an. '/teatimers' oder '/ttt' kann ebenfalls zum Festsetzen und Freistellen verwendet werden.";
    TEATIMERS.UIPANEL_BARGROUP = "Gruppe ";
    TEATIMERS.UIPANEL_NUMBERBARS = "Anzahl der Balken";
    TEATIMERS.UIPANEL_FIXEDDURATION = "Max bar duration";
    TEATIMERS.UIPANEL_BARTEXTURE = "Balkentextur";
    TEATIMERS.UIPANEL_BACKGROUNDCOLOR = "Background color";
    TEATIMERS.UIPANEL_BARSPACING = "Bar spacing";
    TEATIMERS.UIPANEL_BARPADDING = "Bar padding";
    TEATIMERS.UIPANEL_LOCK = "AddOn sperren";
    TEATIMERS.UIPANEL_UNLOCK = "AddOn entsperren";
    TEATIMERS.UIPANEL_TOOLTIP_ENABLEGROUP = "Diese Gruppierung aktivieren und anzeigen";
    TEATIMERS.UIPANEL_TOOLTIP_FIXEDDURATION = "Set the maximum length of bars for this group (in seconds).  Leave empty to set dynamically per bar.";
    TEATIMERS.UIPANEL_TOOLTIP_BARTEXTURE = "Die Textur für die Balken auswählen";
    TEATIMERS.CMD_RESET = "reset";

elseif ( GetLocale() == "koKR" ) then
    -- by metalchoir
    TEATIMERS.RESIZE_TOOLTIP = "드래그: ?�기 변경";
    TEATIMERS.BARMENU_ENABLE = "바 사용";
    TEATIMERS.BARMENU_CHOOSENAME = "입력: 주문 ?�름";
    TEATIMERS.CHOOSENAME_DIALOG = "바? �표시할 버프 ?�는 디버프? �?�름? �입력하세요"
    TEATIMERS.BARMENU_CHOOSEUNIT = "유닛 선?";
    TEATIMERS.BARMENU_PLAYER = "�본?";
    TEATIMERS.BARMENU_TARGET = "�대?";
    TEATIMERS.BARMENU_FOCUS = "�주시대?";
    TEATIMERS.BARMENU_PET = "�펫";
    TEATIMERS.BARMENU_VEHICLE = "탈것";
    TEATIMERS.BARMENU_TARGETTARGET = "대?�? �대?";
    TEATIMERS.BARMENU_BUFFORDEBUFF = "�선?: �버프/디버프";
    TEATIMERS.BARMENU_SPELLID = "사용 주문 ID";
    TEATIMERS.BARMENU_HELPFUL = "버프";
    TEATIMERS.BARMENU_HARMFUL = "디버프";
    TEATIMERS.BARMENU_ONLYMINE = "?�신? �시전한 것만 보여줌";
    TEATIMERS.BARMENU_BARCOLOR = "바 색?";
    TEATIMERS.BARMENU_CLEARSETTINGS = "�설정 초기화";
    TEATIMERS.UIPANEL_SUBTEXT1 = "아래? �옵션?�서 타?�머? �그룹과 ? �그룹별 바 갯수를 설정하실 수 있습니다.";
    TEATIMERS.UIPANEL_SUBTEXT2 = "바는 잠근 후? �작?�합니다. 풀렸? �때 바? �?�?�과 ?�기 조절, 그리고 ?�?�? �바? �우?�릭? �함으로? �설정? �하실 수 있습니다. '/teatimers' ?�는 '/ttt' 명령어를 통해서? �잠금/품 전환? �가능합니다.";
    TEATIMERS.UIPANEL_BARGROUP = "그룹 ";
    TEATIMERS.UIPANEL_NUMBERBARS = "바 갯수";
    TEATIMERS.UIPANEL_FIXEDDURATION = "Max bar duration";
    TEATIMERS.UIPANEL_BARTEXTURE = "바 ?�스처";
    TEATIMERS.UIPANEL_BARSPACING = "바 간격";
    TEATIMERS.UIPANEL_BARPADDING = "배경 ?�기";
    TEATIMERS.UIPANEL_BACKGROUNDCOLOR = "배경 색?";
    TEATIMERS.UIPANEL_LOCK = "�잠금";
    TEATIMERS.UIPANEL_UNLOCK = "풀림";
    TEATIMERS.UIPANEL_TOOLTIP_ENABLEGROUP = "? �그룹? �바를 표시/사용합니다.";
    TEATIMERS.UIPANEL_TOOLTIP_BARTEXTURE = "바 ?�스처를 선?�하세요";
    TEATIMERS.CMD_RESET = "초기화";

elseif ( GetLocale() == "ruRU" ) then
    -- by Vlakarados
    TEATIMERS.RESIZE_TOOLTIP = "Кликнуть и тащить для изменения размера";
    TEATIMERS.BARMENU_ENABLE = "Включить полосу";
    TEATIMERS.BARMENU_CHOOSENAME = "Выбрать бафф/дебафф для слежения";
    TEATIMERS.CHOOSENAME_DIALOG = "Введите название баффа/дебаффа для слежения"
    TEATIMERS.BARMENU_CHOOSEUNIT = "Юнит слежения";
    TEATIMERS.BARMENU_PLAYER = "Игрок";
    TEATIMERS.BARMENU_TARGET = "Цель";
    TEATIMERS.BARMENU_FOCUS = "Фокус";
    TEATIMERS.BARMENU_PET = "Питомец";
    TEATIMERS.BARMENU_VEHICLE = "Средство передвижения";
    TEATIMERS.BARMENU_TARGETTARGET = "Цель цели";
    TEATIMERS.BARMENU_BUFFORDEBUFF = "Бафф или дебафф?";
    TEATIMERS.BARMENU_SPELLID = "Используйте удостоверение личности произношения по буквам";
    TEATIMERS.BARMENU_HELPFUL = "Бафф";
    TEATIMERS.BARMENU_HARMFUL = "Дебафф";
    TEATIMERS.BARMENU_ONLYMINE = "Показывать только наложенные мной";
    TEATIMERS.BARMENU_BARCOLOR = "Цвет полосы";
    TEATIMERS.BARMENU_CLEARSETTINGS = "Очистить настройки";
    TEATIMERS.UIPANEL_SUBTEXT1 = "Эти настройки позволяют настроить бафф/дебафф полосы слежения.";
    TEATIMERS.UIPANEL_SUBTEXT2 = "Полосы работают только когда заблокированы группы. Можно менять размер и перемещать группы полос и кликнуть правой кнопкой мыши для изменения индивидуальных настроек. Ввести '/teatimers' или '/ttt' to блокировки/разблокировки.";
    TEATIMERS.UIPANEL_BARGROUP = "Группа ";
    TEATIMERS.UIPANEL_NUMBERBARS = "Количество полос";
    TEATIMERS.UIPANEL_FIXEDDURATION = "Максимальное время на полосе";
    TEATIMERS.UIPANEL_BARTEXTURE = "Текcтура полоc";
    TEATIMERS.UIPANEL_BARSPACING = "Промежуток полоc";
    TEATIMERS.UIPANEL_BARPADDING = "Уплотнение полоc";
    TEATIMERS.UIPANEL_BACKGROUNDCOLOR = "Цвет фона";
    TEATIMERS.UIPANEL_LOCK = "Заблокировать";
    TEATIMERS.UIPANEL_UNLOCK = "Разблокировать";
    TEATIMERS.UIPANEL_TOOLTIP_ENABLEGROUP = "Показать и включить эту группу полос";
    TEATIMERS.UIPANEL_TOOLTIP_FIXEDDURATION = "Указать максимальное время пробега полосы в секундах. Оставить пустым для динамического времени для каждой полойы (полное время = длительность баффа/дебаффа).";
    TEATIMERS.UIPANEL_TOOLTIP_BARTEXTURE = "Выбрать текстуру для полос.";
    TEATIMERS.CMD_RESET = "Сброс";

elseif ( GetLocale() == "zhCN" ) then
	-- by wowui.cn
    -- TEATIMERS.BAR_TOOLTIP2 = "右键点击计时条配置. 更多的选项在暴雪界面选项菜单里. 输入 /teatimers 来锁定并启用.";
    -- TEATIMERS.RESIZE_TOOLTIP = "点击和拖动来修改计时条尺寸";
    TEATIMERS.BARMENU_ENABLE = "启用计时条";
    TEATIMERS.BARMENU_CHOOSENAME = "选择需要计时的Buff/Debuff";
    TEATIMERS.CHOOSENAME_DIALOG = "输入在这个计时条内计时的Buff或Debuff的精确名字"
    TEATIMERS.BARMENU_CHOOSEUNIT = "需要监视的单位";
    TEATIMERS.BARMENU_PLAYER = "玩家";
    TEATIMERS.BARMENU_TARGET = "目标";
    TEATIMERS.BARMENU_FOCUS = "焦点";
    TEATIMERS.BARMENU_PET = "宠物";
    TEATIMERS.BARMENU_VEHICLE = "载具";
    TEATIMERS.BARMENU_TARGETTARGET = "目标的目标";
    TEATIMERS.BARMENU_BUFFORDEBUFF = "Buff还是Debuff?";
    TEATIMERS.BARMENU_BUFF = "Buff";
    TEATIMERS.BARMENU_DEBUFF = "Debuff";
    TEATIMERS.BARMENU_ONLYMINE = "仅显示自身施放的";
    TEATIMERS.BARMENU_BARCOLOR = "计时条颜色";
    TEATIMERS.BARMENU_CLEARSETTINGS = "清除设置";
    TEATIMERS.UIPANEL_SUBTEXT1 = "这些选项允许你自定义Buff/Debuff计时条.";
    TEATIMERS.UIPANEL_SUBTEXT2 = "计时条锁定后才能正常工作. 当解锁时, 你可以移动或修改计时条分组的大小, 右键点击单独的计时条可以进行更多的设置. 你也可以输入 '/teatimers' 或 '/ttt' 来锁定/解锁.";
    TEATIMERS.UIPANEL_BARGROUP = "分组 ";
    TEATIMERS.UIPANEL_NUMBERBARS = "计时条数量";
    TEATIMERS.UIPANEL_FIXEDDURATION = "计时条最大持续时间";
    TEATIMERS.UIPANEL_BARTEXTURE = "计时条材质";
    TEATIMERS.UIPANEL_BARSPACING = "计时条空距";
    TEATIMERS.UIPANEL_BARPADDING = "计时条间距";
    TEATIMERS.UIPANEL_BACKGROUNDCOLOR = "背景颜色";
    TEATIMERS.UIPANEL_LOCK = "锁定";
    TEATIMERS.UIPANEL_UNLOCK = "解锁";
    TEATIMERS.UIPANEL_TOOLTIP_ENABLEGROUP = "显示并启用这个分组的计时条";
    TEATIMERS.UIPANEL_TOOLTIP_FIXEDDURATION = "设置这个分组计时条的最大长度 (按秒数).  留空为每个计时条设置不同的数值.";
    TEATIMERS.UIPANEL_TOOLTIP_BARTEXTURE = "选择计时条的材质图像.";
    TEATIMERS.CMD_RESET = "重置";

elseif ( GetLocale() == "zhTW" ) then
	-- by wowui.cn
    -- TEATIMERS.BAR_TOOLTIP2 = "右鍵點擊計時條配置. 更多的選項在暴雪介面選項菜單裏. 輸入 /teatimers 來鎖定並啟用.";
    -- TEATIMERS.RESIZE_TOOLTIP = "點擊和拖動來修改計時條尺寸";
    TEATIMERS.BARMENU_ENABLE = "啟用計時條";
    TEATIMERS.BARMENU_CHOOSENAME = "選擇需要計時的Buff/Debuff";
    TEATIMERS.CHOOSENAME_DIALOG = "輸入在這個計時條內計時的Buff或Debuff的精確名字"
    TEATIMERS.BARMENU_CHOOSEUNIT = "需要監視的單位";
    TEATIMERS.BARMENU_PLAYER = "玩家";
    TEATIMERS.BARMENU_TARGET = "目標";
    TEATIMERS.BARMENU_FOCUS = "焦點";
    TEATIMERS.BARMENU_PET = "寵物";
    TEATIMERS.BARMENU_VEHICLE = "載具";
    TEATIMERS.BARMENU_TARGETTARGET = "目標的目標";
    TEATIMERS.BARMENU_BUFFORDEBUFF = "Buff還是Debuff?";
    TEATIMERS.BARMENU_BUFF = "Buff";
    TEATIMERS.BARMENU_DEBUFF = "Debuff";
    TEATIMERS.BARMENU_ONLYMINE = "僅顯示自身施放的";
    TEATIMERS.BARMENU_BARCOLOR = "計時條顏色";
    TEATIMERS.BARMENU_CLEARSETTINGS = "清除設置";
    TEATIMERS.UIPANEL_SUBTEXT1 = "這些選項允許妳自定義Buff/Debuff計時條.";
    TEATIMERS.UIPANEL_SUBTEXT2 = "計時條鎖定後才能正常工作. 當解鎖時, 妳可以移動或修改計時條分組的大小, 右鍵點擊單獨的計時條可以進行更多的設置. 妳也可以輸入 '/teatimers' 或 '/ttt' 來鎖定/解鎖.";
    TEATIMERS.UIPANEL_BARGROUP = "分組 ";
    TEATIMERS.UIPANEL_NUMBERBARS = "計時條數量";
    TEATIMERS.UIPANEL_FIXEDDURATION = "計時條最大持續時間";
    TEATIMERS.UIPANEL_BARTEXTURE = "計時條材質";
    TEATIMERS.UIPANEL_BARSPACING = "計時條空距";
    TEATIMERS.UIPANEL_BARPADDING = "計時條間距";
    TEATIMERS.UIPANEL_BACKGROUNDCOLOR = "背景顏色";
    TEATIMERS.UIPANEL_LOCK = "鎖定";
    TEATIMERS.UIPANEL_UNLOCK = "解鎖";
    TEATIMERS.UIPANEL_TOOLTIP_ENABLEGROUP = "顯示並啟用這個分組的計時條";
    TEATIMERS.UIPANEL_TOOLTIP_FIXEDDURATION = "設置這個分組計時條的最大長度 (按秒數).  留空為每個計時條設置不同的數值.";
    TEATIMERS.UIPANEL_TOOLTIP_BARTEXTURE = "選擇計時條的材質圖像.";
    TEATIMERS.CMD_RESET = "重置";

end

NTK_LocLoader = {}
function NTK_LocLoader.IsSpellPower(intVarName)
	local subStart, subEnd = intVarName:find("SPELL_POWER_")
	if subStart == 1 then
	    local stringVarName = intVarName:sub(subEnd+1)
		local stringValue = _G[stringVarName]
		if stringValue == nil or type(stringValue) ~= "string" then
		    return nil
		else
			return true, stringValue
		end
	end
	return nil
end

function NTK_LocLoader.FindPowerTypes()
    TEATIMERS.POWER_TYPES = {};
    TEATIMERS.POWER_TYPES[SPELL_POWER_MANA] = MANA
    TEATIMERS.POWER_TYPES[TEATIMERS.SPELL_POWER_PRIMARY] = TEATIMERS.BARMENU_POWER_PRIMARY
    TEATIMERS.POWER_TYPES[TEATIMERS.SPELL_POWER_STAGGER] = TEATIMERS.BARMENU_POWER_STAGGER
    TEATIMERS.POWER_TYPES[SPELL_POWER_ALTERNATE_POWER] = TEATIMERS.ALTERNATE_POWER

    -- I had found CombatLog_String_PowerType sitting in _G, apparantly added by a blizzard adddon.
    -- However a user had trouble with it not adding Focus, and since it wasn't very public-looking
    -- anyway, I opted to write my own.  I had been hoping to avoid walking all of _G.
    for gkey, gval in pairs(_G) do
        if type(gkey) == "string" and type(gval) == "number" then
    	    local ok, localized = NTK_LocLoader.IsSpellPower(gkey)
    		if ok then
    		    TEATIMERS.POWER_TYPES[gval] = localized
    		end
    	end
    end
    TEATIMERS.POWER_TYPES[TEATIMERS.SPELL_POWER_LEGACY_CP] = TEATIMERS.POWER_TYPES[SPELL_POWER_COMBO_POINTS]
end
NTK_LocLoader.FindPowerTypes()
NTK_LocLoader = nil
