function love.draw()
   love.graphics.setColor(255, 255, 255)        -- This sets the platform color to white. (The parameters are in RGB Color format).
   
   -- The platform will now be drawn as a white rectangle while taking in the variables we declared above.
   --love.graphics.rectangle('fill', platform.x, platform.y, platform.width, platform.height)

   -- This draws the penguin.
   love.graphics.draw(penguin.img, penguin.b:getX(), penguin.b:getY(), 0, 1, 1, 32, 32)

   -- Draw the block.
   love.graphics.polygon("line", platform.b:getWorldPoints(platform.s:getPoints()))
end

