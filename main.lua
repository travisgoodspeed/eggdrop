-- EggDrop Main Module
-- Written 16 and 17 September 2017 at a Game Jam of the Philadelphia Game Mechanics
-- by @travisgoodspeed, @spedgers, #vanhornio, and @maverk.


--This is how other modules are included.
require("draw")     --Draws the scene.
require("physics")  --Manages the physics engine.
require("level")    --Game level.
require("cheats")    --Cheat codes.

--Global variables

penguin = {}
egg = {}
farback = {}
bg = {} --Level background, not farback.

cheats={}

function love.load()
   love.window.setMode(1024,768)

   --Initialize the physics engine and callbacks.
   love.physics.setMeter(64); -- 64 pixels == 1 meter
   world = love.physics.newWorld(0, 9.81*64, true);
   world:setCallbacks(beginContact, endContact, preSolve, postSolve);

   persisting=0;
   
   -- This is the coordinates where the penguin character will be rendered.
   penguin.b = love.physics.newBody(world, 400,200, "dynamic")  -- set x,y position (400,200) and let it move and hit other objects ("dynamic")
   penguin.b:setMass(10)                                        -- make it pretty light
   penguin.s = love.physics.newRectangleShape(48,48)            -- Not quite the full size of the sprite.
   penguin.f = love.physics.newFixture(penguin.b, penguin.s)    -- connect body to shape
   penguin.f:setRestitution(0.4)                                -- make it bouncy
   penguin.f:setUserData("Penguin")
   penguin.img = love.graphics.newImage('sprites/penguin/right/idle/01.png')

   
   -- This is the coordinates where the egg character will be rendered.
   egg.b = love.physics.newBody(world, 400,200, "dynamic")  -- set x,y position (400,200) and let it move and hit other objects ("dynamic")
   egg.b:setMass(10)                                        -- make it pretty light
   egg.s = love.physics.newRectangleShape(32,32)            -- Not quite the full size of the sprite.
   egg.f = love.physics.newFixture(egg.b, egg.s)            -- connect body to shape
   egg.f:setRestitution(0.4)                                -- make it bouncy
   egg.f:setUserData("Egg")
   egg.attached=1;
   egg.img = love.graphics.newImage('sprites/penguin/Egg.png')

   init_level();
   
   -- This calls the default sprite and puts it in the variable called penguin.img.
   
   
   

   cheats_off();
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
      if (dy>-1 and dy<1) or cheats.alwaysjump==1 then
	 penguin.b:setLinearVelocity(dx,-500);
      end
   end

   test_cheats();
end



