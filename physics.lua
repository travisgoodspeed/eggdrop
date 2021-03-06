--- Physics functions for EggDrop.

function beginContact(a, b, coll)
   x,y = coll:getNormal()
   --print(a:getUserData().." colliding with "..b:getUserData().." with a vector normal of: "..x..", "..y);

   astr=a:getUserData();
   bstr=b:getUserData();
   
   --Capture the egg if shift is held on a collision.
   if ((astr=="Egg" and bstr=="Penguin") or (astr=="Penguin" and bstr=="Egg")) and (love.keyboard.isDown('lshift') or love.keyboard.isDown('rshift')) then
      egg.grab=true;
   end

   --Score a goal
   if (astr=="Egg" and bstr=="Goal") or (astr=="Goal" and bstr=="Egg") then
      goal.scoring=true;
      goal.servecount=60;
      score=score+100;
   end
end
 
function endContact(a, b, coll)
   --print(a:getUserData().." uncolliding with "..b:getUserData());
end
 
function preSolve(a, b, coll)
   
end
 
function postSolve(a, b, coll, normalimpulse, tangentimpulse)
   
end



--Serves the egg from the goal.
function serve_egg()
   --Disable the goal sign.
   msg.b:setActive(false);
   
   --Play the sound.
   sounds.throw:play();
   
   x, y   = goal.b:getPosition();
   --Egg comes from goal position, but outside of block.
   if goal.dir=="left" then
      egg.b:setPosition(x-50,y-20);
      egg.b:setLinearVelocity(-800,-450);
   else
      egg.b:setPosition(x+50,y-20);
      egg.b:setLinearVelocity(800,-450);
   end
   egg.b:setActive(true);
   egg.grab=false;
   goal.scoring=false;
end
