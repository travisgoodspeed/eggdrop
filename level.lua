
function init_level()
   create_edge_walls(1024,768);

   --Load the background image and create blocks.
   bg.img=love.graphics.newImage('levels/00/bg.png');
   newblock(336,246, 537,283, "Block");
   newblock(639,357, 848,387, "Block");
   newblock(376,415, 937,448, "Block");
   newblock( 50,566, 530,603, "Block");
end



--Generates a block from a top coordinate to a bottom right coordinate.
function newblock(tx,ty,bx,by,name)
   width=math.abs(bx-tx);
   height=math.abs(by-ty);
   x=math.min(tx,bx)+width/2
   y=math.min(ty,by)+height/2;

   --Block
   right={}
   right.b = love.physics.newBody(world, x, y, "static")
   right.s = love.physics.newRectangleShape(width,height)
   right.f = love.physics.newFixture(right.b, right.s)
   right.f:setUserData(name)
end


function create_edge_walls(width,height)
   --Bottom of the world.
   newblock(0,height,width,height+1,"Block");
   --Top of the world.
   newblock(0,0,width,1,"Block");
   --Left
   newblock(0,0,1,height,"Left");
   --Right
   newblock(width,0,width+1,height,"Right");
end
