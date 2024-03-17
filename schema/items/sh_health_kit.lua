
ITEM.name = "Bacta"
ITEM.model = Model("models/bf2/compiled 0.34/bacta.mdl")
ITEM.description = "Eine chemische Substanz, die aus geleeartigen, transparent-roten Partikeln von Alazhi und Kavam-Bakterien besteht, die mit einer farblosen, viskosen Flüssigkeit vermischt sind."
ITEM.category = "Medical"
ITEM.price = 0

ITEM.functions.Вenutzen = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 100))
	end
}