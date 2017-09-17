-- Cheat codes are activated by a button:
-- 0. Disable all codes.
-- 1. Show collision boxes.
-- 2. Always jump.
-- 3. Grab the egg.
-- 4. Score a goal.
-- 5. Release a goal.

-- Disable all cheat codes.
function cheats_off()
   cheats.boundingboxes=0;
   cheats.alwaysjump=0;
end


--Check keypad and enable cheats as needed.
function test_cheats()
   if love.keyboard.isDown('1') then
      cheats.boundingboxes=1;
   end
   if love.keyboard.isDown('2') then
      cheats.alwaysjump=1;
   end
   if love.keyboard.isDown('3') then
      egg.grab=true;
   end
   if love.keyboard.isDown('4') then
      goal.scoring=true;
   end
   if love.keyboard.isDown('5') then
      goal.scoring=false;
   end
   
   
   if love.keyboard.isDown('0') then
      cheats_off();
   end
end
