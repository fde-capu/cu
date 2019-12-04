SHELLS		=	*.sh
LOCATION	=	/usr/local
NAME		=	CU

SHELLS		=	*.sh

install:	create_dir
	cp $(SHELLS) $(DESTDIR)$(LOCATION)/bin

create_dir:
	mkdir -p $(DESTDIR)$(LOCATION)/bin
	
run:	install
	cu_byobu_nof1.sh
