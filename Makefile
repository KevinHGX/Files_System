#Macros = Objs/Directory
JAVA = java -cp .
JAVAC = javac -cp .
ALLJ = *.java 
TEEJ = | java -cp .

#NOTA:
# java -cp . es la manera en que me compila
# y ejecuta los .java asi como los .class
#
# java -cp .   es igual a decir que es solo java

# Ejemplo de ejecucion

#	java -cp . holaMundo
#	java holaMundo

# Funciona igual al crear los .class

#	javac -cp . holaMundo.java
#	javac holaMundo.java

#------------comandos------------
MKFS = mkfs
LS = ls
MKDIR = mkdir
CAT = cat
TEE = tee
CP = cp

CHMOD = chmod
CHGRP = chgrp
#--------------------------------
#Target  : Dependencias 
# Compilar
javac:
	$(JAVAC) $(ALLJ)

#compilar y ejecutar ls
all:
	$(JAVAC) $(ALLJ)
	$(JAVA) $(LS) //

##crear los bloques
mkfs:
	$(JAVA) $(MKFS) filesys.dat 256 40

#creamos un bucle para simular un terminal
.ONESHELL:
ls:
	$(JAVA) $(LS) //

		for number in {1..999} ; do \
			read -p "(q)exit / Change Directory: " STR2 ; \
			if [ $$STR2 == "q" ]; then \
				echo "EXIT"; \
				break; \
			else \
				$(JAVA) $(LS) $$STR2 ; \
			fi; \
		done; \

#crear un nuevo directorio
.ONESHELL:
mkdir:
	@read -p "New File or Folder: " file
	$(JAVA) $(MKDIR) $$file
	
#listar el contenido
.ONESHELL:	
cat:
	@read -p "Archive: " file; \
 	$(JAVA) $(CAT) $$file

#
.ONESHELL:
tee:
	@read -p "Message or Text: " message
	
	@read -p "Diretory: " File

	@echo $$message $(TEEJ) $(TEE) $$File

#mover los archivos a otros directorios
.ONESHELL:
cp:
	@read -p "Archivo: " archivo

	@read -p "File: " file

	$(JAVA) $(CP) $$archivo $$file

#--------------------------------------------------------
# Ejercicios 4 y 5

#cambiar el modo de acceso
.ONESHELL:
chmod:
	@read -p "Archivo: " archivo

	@read -p "Modo: " mod

	$(JAVA) $(CHMOD) $$archivo $$mod

#
.ONESHELL:
chgrp:
	@read -p "File´s Gid: " gid

	@read -p "Diretorio o Archivo: " archivo

	$(JAVA) $(CHGRP) $$gid $$archivo




