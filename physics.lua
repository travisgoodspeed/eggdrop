--- Phyics functions for EggDrop.


function beginContact(a, b, coll)
   x,y = coll:getNormal()
   print(a:getUserData().." colliding with "..b:getUserData().." with a vector normal of: "..x..", "..y);

   astr=a:getUserData();
   bstr=b:getUserData();
   
   --Capture the egg if shift is held on a collision.
   if ((astr=="Egg" and bstr=="Penguin") or (astr=="Penguin" and bstr=="Egg")) and (love.keyboard.isDown('lshift') or love.keyboard.isDown('rshift')) then
      egg.grab=true;
   end
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
