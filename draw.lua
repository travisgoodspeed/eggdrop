
function update_penguinsprite()
   if egg.b:isActive() or goal.scoring then
      penguin.sprite=penguinnoeggsprite
   else
      penguin.sprite=penguineggsprite
   end

   penguin.img = penguin.sprite[penguin.dir].idle[1];
end



function update_goalsprite()
   if goal.scoring then
      goal.sprite=penguineggsprite

      
      if goal.servecount>0 then
	 goal.servecount=goal.servecount-1;
      else
	 --Serve the egg again.
	 serve_egg();
      end
   else
      goal.sprite=penguinnoeggsprite
   end
   
   goal.img = goal.sprite[goal.dir].idle[1];
end



function love.draw()
   --Update the sprites before rendering.
   update_penguinsprite();
   update_goalsprite();
   
   -- Draw the far background first.
   love.graphics.draw(farback.img, 0, 0, 0, 1, 1, 0, 0)

   -- Draw the background next.
   love.graphics.draw(bg.img, 0, 0, 0, 1, 1, 0, 0)

   --Draw the penguin and goal.
   love.graphics.draw(penguin.img, penguin.b:getX(), penguin.b:getY(), 0, 1, 1, 32, 32)
   love.graphics.draw(goal.img, goal.b:getX(), goal.b:getY(), 0, 1, 1, 32, 32)
   if msg.b:isActive() then
      love.graphics.draw(msg.img, msg.b:getX(), msg.b:getY(), msg.b:getAngle(), 1, 1, 64, 32)
   end
   
   -- Draw the egg.
   if egg.b:isActive() then
      love.graphics.draw(egg.img, egg.b:getX(), egg.b:getY(), egg.b:getAngle(), 1, 1, 16, 16)
   end

   -- Draw the foreground next.
   love.graphics.draw(fg.img, 0, 0, 0, 1, 1, 0, 0)

   
   if cheats.boundingboxes==1 then
      love.graphics.setColor(0, 0, 0)
      love.graphics.polygon("line", penguin.b:getWorldPoints(penguin.s:getPoints()))
      love.graphics.polygon("line", goal.b:getWorldPoints(goal.s:getPoints()))
      love.graphics.polygon("line", msg.b:getWorldPoints(msg.s:getPoints()))
      if egg.b:isActive() then
	 love.graphics.polygon("line", egg.b:getWorldPoints(egg.s:getPoints()))
      end
   end



   
   love.graphics.setColor(255, 255, 255)
end

