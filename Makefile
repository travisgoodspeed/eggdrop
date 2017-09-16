

run:
	love .

all:
	rm -rf *.love
	zip eggdrop.love *

clean:
	rm -rf *.love
