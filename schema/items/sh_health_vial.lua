
ITEM.name = "Rüstung"
ITEM.model = Model("models/bf2/compiled 0.34/damage.mdl")
ITEM.description = "Eine chemische Substanz, die das Ausbessern von beschädigten Teilen von Panzerplatten ermöglicht."
ITEM.category = "Medical"
ITEM.price = 0

ITEM.functions.Вenutzen = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Armor() + 100, client:GetMaxArmor()))
	end
}
