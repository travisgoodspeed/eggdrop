

run: graphics
	love .

all: graphics
	rm -rf *.love
	zip -r eggdrop.love *.lua sprites backgrounds levels

runzip: all
	love eggdrop.love

clean:
	rm -rf *.love *~
	rm -rf sprites/penguin/left
	rm -rf sprites/penguinegg/left

graphics:
	mkdir -p sprites/penguin/left/idle
	convert -flop sprites/penguin/right/idle/01.png sprites/penguin/left/idle/01.png

	mkdir -p sprites/penguinegg/left/idle
	convert -flop sprites/penguinegg/right/idle/01.png sprites/penguinegg/left/idle/01.png

	mkdir -p sprites/penguin/left/jump
	convert -flop sprites/penguin/right/jump/01.png sprites/penguin/left/jump/01.png
	convert -flop sprites/penguin/right/jump/02.png sprites/penguin/left/jump/02.png
	convert -flop sprites/penguin/right/jump/03.png sprites/penguin/left/jump/03.png
	convert -flop sprites/penguin/right/jump/04.png sprites/penguin/left/jump/04.png
	convert -flop sprites/penguin/right/jump/05.png sprites/penguin/left/jump/05.png
	convert -flop sprites/penguin/right/jump/06.png sprites/penguin/left/jump/06.png
	convert -flop sprites/penguin/right/jump/07.png sprites/penguin/left/jump/07.png

	mkdir -p sprites/penguin/left/walk
	convert -flop sprites/penguin/right/walk/01.png sprites/penguin/left/walk/01.png
	convert -flop sprites/penguin/right/walk/02.png sprites/penguin/left/walk/02.png
	convert -flop sprites/penguin/right/walk/03.png sprites/penguin/left/walk/03.png
	convert -flop sprites/penguin/right/walk/04.png sprites/penguin/left/walk/04.png
	convert -flop sprites/penguin/right/walk/05.png sprites/penguin/left/walk/05.png
	convert -flop sprites/penguin/right/walk/06.png sprites/penguin/left/walk/06.png
	convert -flop sprites/penguin/right/walk/07.png sprites/penguin/left/walk/07.png
	convert -flop sprites/penguin/right/walk/08.png sprites/penguin/left/walk/08.png
	convert -flop sprites/penguin/right/walk/09.png sprites/penguin/left/walk/09.png
	mkdir -p sprites/penguinegg/left/walk
	convert -flop sprites/penguinegg/right/walk/01.png sprites/penguinegg/left/walk/01.png
	convert -flop sprites/penguinegg/right/walk/02.png sprites/penguinegg/left/walk/02.png
	convert -flop sprites/penguinegg/right/walk/03.png sprites/penguinegg/left/walk/03.png
	convert -flop sprites/penguinegg/right/walk/04.png sprites/penguinegg/left/walk/04.png
	convert -flop sprites/penguinegg/right/walk/05.png sprites/penguinegg/left/walk/05.png
	convert -flop sprites/penguinegg/right/walk/06.png sprites/penguinegg/left/walk/06.png
	convert -flop sprites/penguinegg/right/walk/07.png sprites/penguinegg/left/walk/07.png
	convert -flop sprites/penguinegg/right/walk/08.png sprites/penguinegg/left/walk/08.png
	convert -flop sprites/penguinegg/right/walk/09.png sprites/penguinegg/left/walk/09.png
