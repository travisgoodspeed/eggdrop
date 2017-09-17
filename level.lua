
function init_level()
   create_edge_walls(1024,768);
end

function create_edge_walls(width,height)
   --Bottom of the world.
   bottom={}
   bottom.b = love.physics.newBody(world, width/2, height, "static")
   bottom.s = love.physics.newRectangleShape(width,1)
   bottom.f = love.physics.newFixture(bottom.b, bottom.s)
   bottom.f:setUserData("Ground")

   --Top of the world.
   top={}
   top.b = love.physics.newBody(world, width/2, 0, "static")
   top.s = love.physics.newRectangleShape(width,1)
   top.f = love.physics.newFixture(top.b, top.s)
   top.f:setUserData("Top")

   --Left of the world.
   left={}
   left.b = love.physics.newBody(world, 0, height/2, "static")
   left.s = love.physics.newRectangleShape(1,height)
   left.f = love.physics.newFixture(left.b, left.s)
   left.f:setUserData("Left")

   --Right of the world.
   right={}
   right.b = love.physics.newBody(world, width, height/2, "static")
   right.s = love.physics.newRectangleShape(1,height)
   right.f = love.physics.newFixture(right.b, right.s)
   right.f:setUserData("Right")
end
