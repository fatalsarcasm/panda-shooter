function love.load()
  Object = require "classic"
  require "player"
  require "enemy"
  require "bullet"
  require "menu"
  
  player = Player()
  enemy = Enemy()
  menu = Menu()
  listOfBullets = {}
  
  game_over = false
end

function love.update(dt)
  player:update(dt)
  enemy:update(dt)
  
  for i,v in ipairs(listOfBullets) do
    v:update(dt)
    v:checkCollision(enemy)
    
    if v.dead then
      table.remove(listOfBullets, i)
    end
  end
end


function love.draw()
  player:draw()
  enemy:draw()
  
  for i,v in ipairs(listOfBullets) do
    v:draw()
  end
  if game_over then
    menu:draw()
  end
end

function love.keypressed(key)
  player:keyPressed(key)
  if game_over then
    menu:keyPressed(key)
  end
end