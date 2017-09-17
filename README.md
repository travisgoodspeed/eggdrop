# EggDrop Game

EggDrop is our working title for quick physics-simulated basketball
game written at a Philly Game Mechanics Jam on the 16th and 17th of
September, 2017 for the Löve2d game engine, version 0.10.2.  It was
written by Spencer Edgers, Travis Goodspeed, Hannibal Collins, and
Erik Van Horn.

Pin-Pin the Peguin has an egg that will soon hatch, but he needs to
keep it warm and get it to a better caretaker than himself.

## Screenshots

![With Egg](screenshots/withegg.png?raw=true "With Egg")

![No Egg](screenshots/noegg.png?raw=true "No Egg")

## Building

The game compiles on Linux or OS X by running `make clean all` or
previews by running `make clean run`.  You will need Löve2d 0.10.2 or
similar; we definitely won't work with 0.8.

After compiling, the file `eggdrop.love` is a self-contained game
bundle that will run with Löve2d on all platforms.

## Controls

```
W
A      -- Left
S
D      -- Right
SPACE  -- Jump
LSHIFT -- Hold to grab the egg.
```

## Cheat Codes

```
0. Disable active cheats.
1. Display bounding boxes of the Penguin and Egg.
2. Unlimited jump.  (Fly mode.)
3. Grab the egg.
4. Release the egg.
```