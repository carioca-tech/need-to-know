local debug = false
--@debug@ debug = true --@end-debug@
local L = LibStub("AceLocale-3.0"):NewLocale("TeaTimers", "enUS", true, debug)

L["BAR_TOOLTIP_TITLE"] = "TeaTimers @project-version@"
L["BAR_TOOLTIP2"] = "Right click bars to configure. More options in the Blizzard interface options menu. Type /teatimers to lock and enable."
L["BAR_MENU_BUFF_CHOOSE"] = "Choose buff/debuff to time..."
L["BAR_MENU_BUFF_CHOOSE_DIALOG"] = "Enter the name of the buff or debuff to time with this bar"

L["BAR_MENU_IMPORTEXPORT"] = "Import/Export Bar Settings"
L["BAR_MENU_IMPORTEXPORT_DIALOG"] = "The current settings for the bar appear below.  To copy these settings to the clipboard, press Ctrl+C. To paste the last settings you copied (such as from another bar), press Ctrl+V. Clear this text to reset the bar to the defaults."
--@localization(locale="enUS", format="lua_additive_table", same-key-is-true=true, handle-subnamespaces="concat")@

