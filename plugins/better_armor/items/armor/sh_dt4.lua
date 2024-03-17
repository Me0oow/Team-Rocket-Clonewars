ITEM.name = "Schutzplatten"
ITEM.description = ""
ITEM.model = "models/cire992/props/hvywepcrate02.mdl"
ITEM.width = 1
ITEM.armorAmount = 200
ITEM.gasmask = false -- It will protect you from bad air
ITEM.height = 1
ITEM.price = 500
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.3, -- Bullets
			0.3, -- Slash
			0.3, -- Shock
			0.3, -- Burn
			0.3, -- Radiation
			0.3, -- Acid
			0.4, -- Explosion
}

ITEM.weight = 5