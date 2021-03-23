help:
	@echo "List of Files in this directory:"
	@ls -lh ./*
	@echo " "
	@echo "The default install location for all git archivs is"
	@echo "~/git at your home directory. You can change this directory"
	@echo "with the git_base setting in the install scripts."
	@echo "make tt-s  will get the latest state of sources to your linux computer"
	@echo "make pr-ac will try to enable access to your ISP-programmer"
	@echo " "
	@echo "Optional Tasks"
	@echo "make tt-d  will get the latest documentation to your linux computer"
	@echo "make tt-o  will get old documentation and sources to your linux computer"
	@echo "make tt-i  will get the latest install scripts to your linux computer"
	@echo " "
	@echo "Additional install of assembler optiboot source and documentation:"
	@echo "make as-opti  assembler optiboot install"

hilfe:
	@echo "Liste der Dateien in diesem Verzeichnis:"
	@ls -lh ./*
	@echo " "
	@echo "make tt-s  installiert den letzten Stand des Quellcodes auf ihren Linux-Computer"
	@echo "make pr-ac versucht, den Zugriff auf Ihren ISP-programmer zu erlauben."
	@echo " "
	@echo "Zusätzliche Aufgaben"
	@echo "make tt-d  installiert die neueste Dokumentation auf ihren Linux-Computer"
	@echo "make tt-o  installiert alte Dokumentationen und Quellcodes auf ihren Linus-Computer"
	@echo "make tt-i  installiert den letzten Stand des Installations-Scripts"
	@echo " "
	@echo "Zusätzliche Installation der Assembler Optiboot Quellen und Dokumentation:"
	@echo "make as-opti  assembler optiboot Installation"



/etc/udev/rules.d/90-atmel.rules: enable_programmer_access 90-atmel.rules
	./enable_programmer_access

tts:
	./update_ttester_source
ttd:
	./update_ttester_docu
tto:
	./update_ttester_old
prac: /etc/udev/rules.d/90-atmel.rules
	
asopti:
	./update_assembler_optiboot
all:	help
