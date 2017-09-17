
function update_penguinsprite()
   if egg.b:isActive() then
      penguin.sprite=penguinnoeggsprite
   else
      penguin.sprite=penguineggsprite
   end

   penguin.img = penguin.sprite[penguin.dir].idle[1];
end



function love.draw()
   --Update the sprites before rendering.
   update_penguinsprite();
   
   -- Draw the far background first.
   love.graphics.draw(farback.img, 0, 0, 0, 1, 1, 0, 0)

   -- Draw the background next.
   love.graphics.draw(bg.img, 0, 0, 0, 1, 1, 0, 0)

   -- Draw the egg.
   if egg.b:isActive() then
      love.graphics.draw(egg.img, egg.b:getX(), egg.b:getY(), egg.b:getAngle(), 1, 1, 16, 16)
   end
   --Draw the penguin.
   love.graphics.draw(penguin.img, penguin.b:getX(), penguin.b:getY(), 0, 1, 1, 32, 32)
   
   if cheats.boundingboxes==1 then
      love.graphics.setColor(0, 0, 0)
      love.graphics.polygon("line", penguin.b:getWorldPoints(penguin.s:getPoints()))
      if egg.b:isActive() then
	 love.graphics.polygon("line", egg.b:getWorldPoints(egg.s:getPoints()))
      end
   end
   
   love.graphics.setColor(255, 255, 255)
end

