--[[
	© 2020 TERRANOVA do not share, re-distribute or modify
	without permission of its author (zacharyenriquee@gmail.com).
--]]

ITEM.base = "base_fullfit";
ITEM.name = "Box mit Trooper Rüstung.";
ITEM.category = "501st";
ITEM.flag = "A"
ITEM.width = 2
ITEM.height = 4
ITEM.model = "models/markus/custom/gameplay/objects/weaponcrate/weaponcrate_01_mesh.mdl"
ITEM.description = "Rechteckige weiße Schachtel mit Schutzpanzerplatten.";
ITEM.maxArmor = 200;
ITEM.gasImmunity = true
ITEM.bodygroup = 3
ITEM.bodygroupValue = 1
ITEM.replacements = "models/starwars/tango_poison/501st/ph1_clone_trooper.mdl"
ix.anim.SetModelClass("models/starwars/tango_poison/501st/ph1_clone_trooper.mdl", "player")
ITEM.iconCam = {
	pos = Vector(65.2, 0, 731.17),
	ang = Angle(84.9, 180.02, 0),
	fov = 2.64
}



function ITEM:PopulateTooltip(tooltip)
	local warning = tooltip:AddRow("warning")
	warning:SetBackgroundColor(Color(192, 192, 192))
	warning:SetText("Hat eine relativ geringe Haltbarkeit, behalte den Zustand deiner Rüstung im Auge.")
	warning:SetFont("1201")
	warning:SetExpensiveShadow(0.5)
	warning:SizeToContents()
end

ITEM.noBusiness = true
ITEM.suppressed = function(itemTable)
	local character = itemTable.player:GetCharacter()
	local charPanel = character:GetInventory()

	if(charPanel:HasEquipped()) then
		return true, "Equip", "You can't equip a uniform with items in your character panel!"
	end

	return false
end

function ITEM:OnEquipped()
	self.player:SetArmor(self:GetData("armor", self.maxArmor))
	self.player:ResetBodygroups()

end

function ITEM:OnUnequipped()
	self:SetData("armor", math.Clamp(self.player:Armor(), 0, self.maxArmor))
	self.player:SetArmor(0)
	self.player:ResetBodygroups()
end

function ITEM:Repair(amount)
	self:SetData("armor", math.Clamp(self:GetData("armor") + amount, 0, self.maxArmor))
end

function ITEM:OnLoadout()
	if (self:GetData("equip")) then
		self.player:SetArmor(self:GetData("armor", self.maxArmor))
	end
end

function ITEM:OnSave()
	if (self:GetData("equip")) then
		self:SetData("armor", math.Clamp(self.player:Armor(), 0, self.maxArmor))
	end
end
