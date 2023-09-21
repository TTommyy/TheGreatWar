-- Copyrights Tomasz Koczar / Jakub Drezewski 2023

local Constants = require("constants")
local Res = require("Resolution")
local Images = require("images")
local Push = require ("push")

local SCALE_FACTOR = 1/3
local SPEED = 150



function setUpPlayers()
    playerOne = {x = Constants.PLAYER_ONE_STARTING_POINT.X,
                 y = Constants.PLAYER_ONE_STARTING_POINT.Y,
                 image = Images.playerGermany}
    
    playerTwo = {x = Constants.PLAYER_TWO_STARTING_POINT.X,
                 y = Constants.PLAYER_TWO_STARTING_POINT.Y, 
                 image = Images.playerBritain}
    
    players = {playerOne, playerTwo}
end

function drawPlayer(player)
    love.graphics.draw(player.image,
                       player.x,
                       player.y,
                       0,
                       SCALE_FACTOR,
                       SCALE_FACTOR)
end

function love.load()
   Push:setupScreen(Res.VIRTUAL_WIDTH, Res.VIRTUAL_HIGHT, Res.WINDOW_WIDTH, Res.WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = true,
        vsync = true
   })
    
    Images.load()
    setUpPlayers()
 end

function love.draw()
    Push:start()
    love.graphics.setColor(1, 0, 0)
    rectangle = love.graphics.rectangle("fill", 0, 0, 800, 540)
    love.graphics.setColor(1, 1, 1)

    for index, player in ipairs(players) do
        drawPlayer(player)
    end 
    Push:finish()
end

function love.update(dt)
    if love.keyboard.isDown("w") then
        playerOne.y =  playerOne.y - dt * SPEED
    end
    if love.keyboard.isDown("s") then
        playerOne.y =  playerOne.y + dt * SPEED
    end
    if love.keyboard.isDown("p") then
        playerTwo.y =  playerTwo.y - dt * SPEED
    end
    if love.keyboard.isDown("l") then
        playerTwo.y =  playerTwo.y + dt * SPEED
    end

    boundsChecking(playerOne)
    boundsChecking(playerTwo)
end


function boundsChecking(player)
    local upperBound = 0
    local lowerBound = Res.VIRTUAL_HIGHT - Constants.PLAYER_SIZE
    if player.y < upperBound then player.y = upperBound end
    if player.y > lowerBound then player.y = lowerBound end
end

function love.resize(w, h)
  return Push:resize(w, h)
end