LOCATION	=	/usr/local

SHELLS		=	*.sh

NAME		=	CU

install:	create_dir
	cp $(SHELLS) $(DESTDIR)$(LOCATION)/bin

create_dir:
	mkdir -p $(DESTDIR)$(LOCATION)/bin
	
run:	install
	cu_byobu_nof1.sh
