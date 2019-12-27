# ********************************************* #
#                                               #
#                      :||::||:::||:||:|::|||:  #
#  Makefile            :|::|:|||:||||::::|||||  #
#                      |:|:|:::|::::::|:|:||::  #
#      :|:::: <:|::::>                          #
#                                               #
#  C20191204153419 :|::::                       #
#  U20191227144202 |||:::                       #
#                                               #
# ********************************************* #

LOCATION	=	/usr/local/bin

EXTERNALS	=	../xic

INSTALLSHELLS	=	cu_*

NAME		=	cu

install:	create_dir $(EXTERNALS)
	cp $(INSTALLSHELLS) $(DESTDIR)$(LOCATION)

create_dir:
	mkdir -p $(DESTDIR)$(LOCATION)
	
run:
	./bu_byobu_nof1
	./bu_vim

external:
	make install -C $(EXTERNALS)

all:	external install run
