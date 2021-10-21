#MOSS File System Simulator

####Makefile integrado en el Simulador

El archivo **Makefile** tiene integrado un **read**, esto permite ingresar desde Terminal cualquier Directorio o Archivo, dependiendo del comando **(*clase*  )** elegido:

####Comandos / Clases .java
                
+ mkfs
    + crear un archivo de respaldo del sistema de archivos.
+ mkdir
    * crear nuevo directorio.
+ ls
    * ver el contenido de un directorio. Por defecto, este comando mostrará el 		contenido de tu directorio desde la raiz del simulador " /"
	* Nota para moverte por los directorios ingresa toda la ruta  iniciando con doble diagonal:
	*** Ejemplo**:  //home/bin/Hello_World.txt
+ tee
    * herramienta para instalar scripts.
+ cat
    * Se utiliza para listar el contenido de un archivo en la salida estándar.
+ cp
    * copiar archivos del directorio actual a un directorio diferente.

-----

####MOSS File System Simulator
[Ejercicios del Simulador](httphttp://www.ontko.com/moss/filesys/user_guide.html:// "Ejercicios del Simulador")

**Clases .java agregados al simulador**

| N° Ejercicio  | . JAVA  |  
| :------------ |:---------------:| 
|     4   | chgrp.java  |  
|     5   | chmod.java |  

**Funciones Agregadas al Kernel.java **

	funcion   chgrp   linea del Kernel.java: 1189
	funcion   chmod    linea del Kernel.java: 1222
