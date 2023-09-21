-- Constants

local Res = require("Resolution")
local PLAYER_SIZE = 100
local STARTY = (Res.VIRTUAL_HIGHT - PLAYER_SIZE)/2

return{
    -- Starting points
    PLAYER_ONE_STARTING_POINT = {
        X = 0, Y = STARTY
    },
    
    PLAYER_TWO_STARTING_POINT = {
        X = Res.VIRTUAL_WIDTH - PLAYER_SIZE, Y = STARTY
    },
    PLAYER_SIZE = 100
}
