# ********************************************* #
#                                               #
#                      |:|||:||||:|:||:||::|||  #
#  Makefile            ::|:|:|::||:|:::||||||:  #
#                      ::|::|::::||::::::|:|||  #
#                                               #
#                                               #
#  C20200407124249 ::|:::                       #
#  U20200407124252 :|||::                       #
#                                               #
# ********************************************* #

LOCATION	=	/usr/local/bin

EXTERNALS	=	../xic

INSTALLSHELLS	=	culo cu_*

NAME		=	cu

all:	install run

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
