function love.draw()
   -- Draw the far background first.
   love.graphics.draw(farback.img, 0, 0, 0, 1, 1, 0, 0)

   -- Draw the background next.
   love.graphics.draw(bg.img, 0, 0, 0, 1, 1, 0, 0)

   -- This draws the penguin.
   love.graphics.draw(penguin.img, penguin.b:getX(), penguin.b:getY(), 0, 1, 1, 32, 32)
   love.graphics.draw(egg.img, egg.b:getX(), egg.b:getY(), egg.b:getAngle(), 1, 1, 16, 16)
   if cheats.boundingboxes==1 then
      love.graphics.setColor(0, 0, 0)
      love.graphics.polygon("line", penguin.b:getWorldPoints(penguin.s:getPoints()))
      love.graphics.polygon("line", egg.b:getWorldPoints(egg.s:getPoints()))
   end
   
   -- Draw the block.
   --love.graphics.polygon("line", platform.b:getWorldPoints(platform.s:getPoints()))

   love.graphics.setColor(255, 255, 255)
end

