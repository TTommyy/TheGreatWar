-- Copyrights Tomasz Koczar / Jakub Drezewski 2023

local Constants = require("constants")
local Images = require("images")

function love.load()
    love.window.setMode(Constants.VIRTUAL_WIDTH, Constants.VIRTUAL_HIGHT,
        {
            resizable = true,
            vsync = true
        })
    love.graphics.setDefaultFilter('nearest', 'nearest')
    
    Images.load()
 end

function love.draw()
    playerOne = love.graphics.draw(Images.playerGermany,
                                   Constants.PLAYER_ONE_STARTING_POINT.X,
                                   Constants.PLAYER_ONE_STARTING_POINT.Y,
                                   0,
                                   200/Images.playerGermany:getWidth(),
                                   200/Images.playerGermany:getHeight())
    playerTwo = love.graphics.draw(Images.playerBritain,
                                   Constants.PLAYER_TWO_STARTING_POINT.X,
                                   Constants.PLAYER_TWO_STARTING_POINT.Y,
                                   0,
                                   200/Images.playerBritain:getWidth(),
                                   200/Images.playerBritain:getHeight())
end