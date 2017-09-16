-- EggDrop Main Module
-- Written 16 and 17 September 2017 at a Game Jam of the Philadelphia Game Mechanics
-- by @travisgoodspeed, @spedgers, #vanhornio, and @maverk.




--Global variables
platform = {}
penguin = {}
 
function love.load()
   love.window.setMode(1024,768)

   --Initialize the physics engine and callbacks.
   love.physics.setMeter(64); -- 64 pixels == 1 meter
   world = love.physics.newWorld(0, 9.81*64, true);
   world:setCallbacks(beginContact, endContact, preSolve, postSolve)

   persisting=0
   
   -- This is the coordinates where the penguin character will be rendered.
   penguin.b = love.physics.newBody(world, 400,200, "dynamic")  -- set x,y position (400,200) and let it move and hit other objects ("dynamic")
   penguin.b:setMass(10)                                        -- make it pretty light
   penguin.s = love.physics.newRectangleShape(64,64)                  -- give it a radius of 50
   penguin.f = love.physics.newFixture(penguin.b, penguin.s)    -- connect body to shape
   penguin.f:setRestitution(0.4)                                -- make it bouncy
   penguin.f:setUserData("Penguin")

   --Static platform; we'll need more tha none of these.
   platform.b = love.physics.newBody(world, 400,400, "static") -- "static" makes it not move
   platform.s = love.physics.newRectangleShape(200,50)         -- set size to 200,50 (x,y)
   platform.f = love.physics.newFixture(platform.b, platform.s)
   platform.f:setUserData("Block")
   
   -- This calls the defualt sprite and puts it in the variable called penguin.img.
   penguin.img = love.graphics.newImage('sprites/penguin/standin.png')
end

function beginContact(a, b, coll)
   x,y = coll:getNormal()
   print(a:getUserData().." colliding with "..b:getUserData().." with a vector normal of: "..x..", "..y);
end
 
function endContact(a, b, coll)
   persisting=0; --No longer touching
   print(a:getUserData().." uncolliding with "..b:getUserData());
end
 
function preSolve(a, b, coll)
   if persisting == 0 then    -- only say when they first start touching
      print(a:getUserData().." touching "..b:getUserData())
   elseif persisting < 20 then    -- then just start counting
      print(persisting)
   end
   persisting = persisting + 1 
end
 
function postSolve(a, b, coll, normalimpulse, tangentimpulse)
   
end


function love.update(dt)
   world:update(dt);

   --Left reight movement; right takes priority.
   if love.keyboard.isDown('d') then
      penguin.b:applyForce(1000,0);
   elseif love.keyboard.isDown('a') then
      penguin.b:applyForce(-1000,0);
   end

   --Jump
   if love.keyboard.isDown('space') then
      --penguin.b:applyForce(0,-5000);
      dx, dy = penguin.b:getLinearVelocity();

      --FIXME: This is a poor check for being on the ground.
      --Maybe use the collection vector instead?
      if dy>-1 and dy<1 then
	 penguin.b:setLinearVelocity(dx,-500);
      end
   end

end

function love.draw()
   love.graphics.setColor(255, 255, 255)        -- This sets the platform color to white. (The parameters are in RGB Color format).
   
   -- The platform will now be drawn as a white rectangle while taking in the variables we declared above.
   --love.graphics.rectangle('fill', platform.x, platform.y, platform.width, platform.height)

   -- This draws the penguin.
   love.graphics.draw(penguin.img, penguin.b:getX(), penguin.b:getY(), 0, 1, 1, 32, 32)

   -- Draw the block.
   love.graphics.polygon("line", platform.b:getWorldPoints(platform.s:getPoints()))
end
