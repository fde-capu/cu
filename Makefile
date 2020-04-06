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

all:	external install run

install:	create_dir $(EXTERNALS)
	cp $(INSTALLSHELLS) $(DESTDIR)$(LOCATION)
	cp cuzim $(DESTDIR)$(LOCATION)
	chmod +x $(DESTDIR)$(LOCATION)/cu*

create_dir:
	mkdir -p $(DESTDIR)$(LOCATION)
	
run:
	@echo "Run the commands below as needed."
	#bash ./bu_vim
	#bash ./bu_byobu_nof1

external:
	make install -C $(EXTERNALS)
