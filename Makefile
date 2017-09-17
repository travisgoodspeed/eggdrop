

run: graphics
	love .

all: graphics
	rm -rf *.love
	zip eggdrop.love *.lua sprites

clean:
	rm -rf *.love *~
	rm -rf sprites/penguin/left
	rm -rf sprites/penguinegg/left

graphics:
	mkdir -p sprites/penguin/left/idle
	convert -flop sprites/penguin/right/idle/01.png sprites/penguin/left/idle/01.png
	mkdir -p sprites/penguinegg/left/idle
	convert -flop sprites/penguinegg/right/idle/01.png sprites/penguinegg/left/idle/01.png
