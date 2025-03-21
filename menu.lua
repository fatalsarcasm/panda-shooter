Menu = Object:extend()

function Menu:new()
  self.image = love.graphics.newImage("8790528.599999905_f-word.png")
  --self.width = love.graphics.getWidth()
  --self.height = love.graphics.getHeight()
end

function Menu:draw()
  love.graphics.draw(self.image)
end
  

function Menu:update()
  love.load()
end

function Menu:keyPressed(key)
  if key == "space" then
    Menu:update()
  end
end