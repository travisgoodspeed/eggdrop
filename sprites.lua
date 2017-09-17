


--Initialize all sprites.
function sprites_init()
   penguinnoeggsprite={}
   penguinnoeggsprite.right={}
   penguinnoeggsprite.left={}

   penguinnoeggsprite.right.idle={}
   penguinnoeggsprite.right.idle[1]=love.graphics.newImage('sprites/penguin/right/idle/01.png');

   penguinnoeggsprite.left.idle={}
   penguinnoeggsprite.left.idle[1]=love.graphics.newImage('sprites/penguin/left/idle/01.png');

   
   penguineggsprite={}
   penguineggsprite.right={}
   penguineggsprite.left={}

   penguineggsprite.right.idle={}
   penguineggsprite.right.idle[1]=love.graphics.newImage('sprites/penguinegg/right/idle/01.png');

   penguineggsprite.left.idle={}
   penguineggsprite.left.idle[1]=love.graphics.newImage('sprites/penguinegg/left/idle/01.png');
end
