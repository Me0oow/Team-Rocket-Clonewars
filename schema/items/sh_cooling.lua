ITEM.name = "Kühlzelle"
ITEM.description = "Eine Kühlzelle."

ITEM.weight = 0.7
ITEM.category = "Entity"

ITEM.iconCam = {
	pos = Vector(509.64, 427.61, 310.24),
	ang = Angle(24.74, 220.02, 0),
	fov = 0.71
}

ITEM.functions.Place = {
    OnRun = function(item)
        local entity = ents.Create("coolingcell")
        local eyeTrace = item.player:GetEyeTraceNoCursor()

        if (!IsValid(entity)) then
            item.player:Notify("Could not spawn entity!")
        end

        entity:SetPos(eyeTrace.HitPos)
        entity:Spawn()
    end
}