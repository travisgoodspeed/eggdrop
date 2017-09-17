# EggDrop Game

EggDrop is our working title for quick physics-simulated basketball
game written at a Philly Game Mechanics Jam on the 16th and 17th of
September, 2017 for the Löve2d game engine, version 0.10.2.  It was
written by Spencer Edgers, Travis Goodspeed, Hannibal Collins, and
Erik Van Horn.

Pin-Pin the Peguin has an egg that will soon hatch, but he needs to
keep it warm by passing it to his mate, Pen-Pen.

## Screenshots

![With Egg](screenshots/withegg.png?raw=true "With Egg")

![No Egg](screenshots/noegg.png?raw=true "No Egg")

## Building

The game compiles on Linux or OS X by running `make clean all` or
previews by running `make clean run`.  You will need Löve2d 0.10.2 or
similar; we definitely won't work with 0.8.

After compiling, the file `eggdrop.love` is a self-contained game
bundle that will run with Löve2d on all platforms.

## Prebuilt Download

You can download a prebuilt
[eggdrop.love](prebuild/eggdrop.love?raw=true).  Be sure to also have
the [LÖVE Game Engine](https://love2d.org/).

## Controls

```
W
A      -- Left
S
D      -- Right
SPACE  -- Jump
SHIFT  -- Hold to grab the egg.
```

`A` and `D` move left and right, with the spacebar jumping.  You need
to hold the shift button to catch the egg, and releasing the shift
button will throw the egg.

## Cheat Codes

```
0. Disable active cheats.
1. Display bounding boxes of the Penguin and Egg.
2. Unlimited jump.  (Fly mode.)
3. Grab the egg.
4. Score a goal.
5. Release a goal.
```

