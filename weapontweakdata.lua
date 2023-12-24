if not WeaponTweakDataModifier then
    WeaponTweakDataModifier = class()
end

function WeaponTweakDataModifier:init()
    -- Kopiere die gesamte originale weapontweakdata
    self.orig = deep_clone(tweak_data.weapon)

    -- Ändere nur die Teile, die du anpassen möchtest
    self:_modify_weapontweakdata()
end

function WeaponTweakDataModifier:_modify_weapontweakdata()
    -- Hier füge deine Änderungen an der weapontweakdata hinzu
    if tweak_data and tweak_data.weapon then
        -- Beispiel: Ändere die Anzahl der Strahlen für die r870_npc-Waffe
        if tweak_data.weapon.r870_npc then
            tweak_data.weapon.r870_npc.rays = 9999999999999
        end
    end
end

-- Erstelle eine Instanz der Klasse, um die init-Funktion aufzurufen
local modifier = WeaponTweakDataModifier:new()
modifier:init()
