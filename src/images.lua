-- images

local Constants = require("constants")

-- German Empire
wilhelmIIPath = "/images/WilhelmII.jpg"
-- British Emppire
georgeVPath = "/images/GeorgeV.jpg"

local images = {}

function setUpPlayer(pathToImage)
    image = love.graphics.newImage(pathToImage)
    return image
end

function images.load()
    images.playerGermany = setUpPlayer(wilhelmIIPath)
    images.playerBritain = setUpPlayer(georgeVPath)
end

return images