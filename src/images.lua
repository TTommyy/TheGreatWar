-- images

local Constants = require("constants")

-- German Empire
wilhelmIIPath = "/images/WilhelmII.jpg"
-- British Emppire
georgeVPath = "/images/GeorgeV.jpg"

local images = {}

function setUpPlayer(pathToImage)
    image = love.graphics.newImage(pathToImage)
end

function images.load()
    images.playerGermany = love.graphics.newImage(wilhelmIIPath)
    images.playerBritain = love.graphics.newImage(georgeVPath)
end

return images