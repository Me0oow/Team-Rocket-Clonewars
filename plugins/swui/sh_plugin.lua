local PLUGIN = PLUGIN

PLUGIN.name = "New Character System"
PLUGIN.author = ""
PLUGIN.description = "Replaces the default helix character creation derma."

// Default background music t
PLUGIN.DefaultBackgroundMusic = "otherfaction_background.mp3"

// Volume of all background music from 0-1 (can be decimal).
PLUGIN.BackgroundMusicVolume = 1

// Sound played when mouse hovers over button.
PLUGIN.ButtonAimSound = "karman/navigation_slider_02.mp3"

// Sound played when button is clicked.
PLUGIN.ButtonPressSound = "karman/navigation_activate_01.mp3"



// Select language for all derma.
PLUGIN.selectedLanguage = "russian"

// Russian language was translated using Google Translate
PLUGIN.languageTable = {
	["english"] = {
		["Select"] = "Select",
		["CREATE"] = "CREATE",
		["BACK"] = "BACK",
		["Delete"] = "Delete",
		["FIRST NAME"] = "First Name",
		["LAST NAME"] = "",
		["DESCRIPTION"] = "Description",
		["BIOGRAPHY"] = "Biography",
		["ATTRIBUTES"] = "Attributes",
		["Points Left"] = "Points Left",
		["AGE"] = "Age",
		["GENDER"] = "Gender",
		["SECONDARY LANGUAGE"] = "Secondary language"
	},
	["russian"] = {
		["Select"] = "Auswählen",
		["CREATE"] = "Erstellen",
		["BACK"] = "Zurück",
		["Delete"] = "Löschen",
		["FIRST NAME"] = "CT-#### Name",
		["LAST NAME"] = "",
		["DESCRIPTION"] = "Beschreibung (Ganzer Satz)",
		["BIOGRAPHY"] = "Nummer",
		["ATTRIBUTES"] = "Fertigkeiten",
		["Points Left"] = "Punkte links",
		["AGE"] = "Alter",
		["GENDER"] = "Пол",
		["SECONDARY LANGUAGE"] = "Язык"
	}
}





--[[-------------------------------------------------------------------------
Don't touch anything below this line
---------------------------------------------------------------------------]]

if CLIENT then
	local cachedFonts = {}
	PLUGIN.CreateCachedFont = function(name, size, weight, italic, blur)
		if not name then return end

		if not cachedFonts[name] then
			cachedFonts[name] = {}
		end

		size = math.Round(size or 10)
		weight = math.Round(weight or 0)
		blur = math.Round(blur or 0)

		local id = "charcreate_"..name.."_"..size.."_"..weight.."_"..(italic and 1 or 0).."_"..blur
		if cachedFonts[name][id] then return id end

		surface.CreateFont(id, {
			font = name,
			size = size,
			weight = weight,
			antialias = true,
			shadow = false,
			extended = true,
			italic = italic,
			blursize = blur
		})

		cachedFonts[name][id] = true
		return id
	end
	
surface.CreateFont( "120", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = ScreenScale(7),
	weight = 500,
} )

surface.CreateFont( "1201", {
	font = "Arial", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = ScreenScale(7),
	weight = 500,
} )

	// remove when done with development
	if (IsValid(ix.gui.characterMenu)) then
		ix.gui.characterMenu:Remove()

		--TODO: REMOVE ME
		ix.gui.characterMenu = vgui.Create("ixCharMenu")
	end
else
	resource.AddFile("materials/vgui/background/character_info.png")
end