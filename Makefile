LOCATION	=	/usr/local

INSTALLSHELLS	=	cu_*.sh

NAME		=	CU

install:	create_dir
	cp $(INSTALLSHELLS) $(DESTDIR)$(LOCATION)/bin

create_dir:
	mkdir -p $(DESTDIR)$(LOCATION)/bin
	
run:	install
	cu_byobu_nof1
	bu_x_header
