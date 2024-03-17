local playerMeta = FindMetaTable("Player")

function playerMeta:StartExercise(exercise)
    if !self:Alive() or self:InVehicle() then return end

    ix.exercises:Start(self, exercise)
end