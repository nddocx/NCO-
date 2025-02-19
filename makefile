all: compile run display
compile:
	iverilog count.v
run:
	./a.out
display:
	gtkwave wave.vcd 
