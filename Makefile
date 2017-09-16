

run:
	love .

all:
	rm -rf *.love
	zip eggdrop.love *.lua sprites

clean:
	rm -rf *.love *~

