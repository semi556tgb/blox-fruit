-- islands.lua | Detect Sea and Return Islands

local Islands = {}

function Islands.GetCurrentSea()
    local player = game.Players.LocalPlayer
    local placeId = game.PlaceId

    if placeId == 2753915549 then  -- Sea 1
        return 1
    elseif placeId == 4442272183 then  -- Sea 2
        return 2
    elseif placeId == 7449423635 then  -- Sea 3
        return 3
    else
        return 0  -- Unknown
    end
end

function Islands.GetIslands()
    local sea = Islands.GetCurrentSea()

    if sea == 1 then
        return {
            "Starter Island",
            "Jungle",
            "Pirate Village",
            "Desert",
            "Middle Town",
            "Frozen Village",
            "Marine Fortress",
            "Skylands",
            "Colosseum",
            "Prison",
            "Magma Village",
            "Underwater City",
            "Fountain City",
            "Haunted Ship"
        }
    else
        return {}  -- if not Sea 1, return empty list
    end
end

return Islands
