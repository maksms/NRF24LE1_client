CCFLAGS=-Iinclude/ -Isrc/--std-c99
LDFLAGS= -Lsrc/
PROGRAMS = main
SOURCES = ${PROGRAMS:=.c}

all: ${PROGRAMS}

${PROGRAMS}: ${SOURCES}
	sdcc --model-large $(CCFLAGS) $(LDFLAGS) main.c
	./hex2bin -p 00 main.ihx
clean:
	rm -rf  main.asm  main.cdb  main.ihx  main.lk  main.lst  main.map  main.mem  main.omf  main.rel  main.rst  main.sym
