help:
	@echo "List of Files in this directory:"
	@ls -lh ./*
	@echo " "
	@echo "The default install location for all git archivs is"
	@echo "~/git at your home directory. You can change this directory"
	@echo "with the git_base setting in the install scripts."
	@echo " "
	@echo "########### Required Tasks ###########################################"
	@echo "make tt-s  will get the latest state of sources to your linux computer"
	@echo "make pr-ac will try to enable access to your ISP-programmer"
	@echo "######################################################################"
	@echo " "
	@echo "Optional Tasks"
	@echo "make tt-d  will get the latest documentation to your linux computer"
	@echo "make tt-o  will get old documentation and sources to your linux computer"
	@echo "make tt-i  will get the latest install scripts to your linux computer"
	@echo " "
	@echo "Additional install of assembler optiboot source and documentation:"
	@echo "make as-opti  assembler optiboot install"
	@echo " "

hilfe:
	@echo "Liste der Dateien in diesem Verzeichnis:"
	@ls -lh ./*
	@echo " "
	@echo " Das Standardverzeichnis für die git Archive ist"
	@echo "~/git in Ihrem Home Verzeichnis. Sie können dieses Verzeichnis"
	@echo "ändern, indem Sie die Variable git_base in den Installations-Scripts ändern."
	@echo " "
	@echo "############### Notwendige Schritte ############################################"
	@echo "make tt-s  installiert den letzten Stand des Quellcodes auf ihren Linux-Computer"
	@echo "make pr-ac versucht, den Zugriff auf Ihren ISP-programmer zu erlauben."
	@echo "################################################################################"
	@echo " "
	@echo "Zusätzliche Aufgaben"
	@echo "make tt-d  installiert die neueste Dokumentation auf ihren Linux-Computer"
	@echo "make tt-o  installiert alte Dokumentationen und Quellcodes auf ihren Linus-Computer"
	@echo "make tt-i  installiert den letzten Stand des Installations-Scripts"
	@echo " "
	@echo "Zusätzliche Installation der Assembler Optiboot Quellen und Dokumentation:"
	@echo "make as-opti  assembler optiboot Installation"
	@echo " "



/etc/udev/rules.d/90-atmel.rules: enable_programmer_access 90-atmel.rules
	./enable_programmer_access

tt-s:
	./update_ttester_source
tt-d:
	./update_ttester_docu
tt-o:
	./update_ttester_old
tt-i:
	./update_ttester_linux
pr-ac: /etc/udev/rules.d/90-atmel.rules
	
as-opti:
	./update_assembler_optiboot
all:	help
