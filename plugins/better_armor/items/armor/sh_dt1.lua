ITEM.name = "Rüstung: Katarn lvl.1"
ITEM.description = ""
ITEM.model = "models/niksacokica/containers/con_small_container_pipes.mdl"
ITEM.width = 1
ITEM.armorAmount = 150
ITEM.gasmask = true -- It will protect you from bad air
ITEM.height = 1
ITEM.price = 100
ITEM.category = "armor"
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.7, -- Bullets
			0.75, -- Slash
			0.75, -- Shock
			0.7, -- Burn
			0.75, -- Radiation
			0.75, -- Acid
			0.7, -- Explosion
}


ITEM.replacements = "models/pg/phase1clones/trooperv2pgdirt.mdl"
ix.anim.SetModelClass("models/pg/phase1clones/trooperv2pgdirt.mdl", "player")


