��    ^           �      �     �  �   �     �  -   �  4   �  <   *	     g	     �	     �	  9   �	  "   �	  $   
  %   <
  +   b
  (   �
     �
     �
     �
     �
          $     <  
   O  4   Z     �  6   �     �  "   �     
            B   5  3   x  &   �  /   �       -        4  *   =  (   h  L   �  M   �  .   ,  =   [     �     �     �     �  ;   �     3     M     g  #     :   �  $   �  &     ,   *     W     p     �     �     �     �            !     8     T     m  !   �  '   �  '   �  8   �      6      W     x     |  A     9   �     �  !        7     C  &   O  `   v     �  #   �          4  ,   O  >   |     �     �     �  {  �     u  �   w     2  -   P  4   ~  <   �     �           (  <   I  "   �  $   �  %   �  +   �  (         I  "   b     �     �     �     �     �     �  7   �     6  7   F     ~  "   �     �     �  "   �  ^   �  F   E  .   �  0   �     �  4   �  	   )  (   3  &   \  \   �  g   �  4   H  D   }  6   �     �          %  =   @  #   ~  %   �     �  5   �  <     -   Z  3   �  2   �     �  &          -   -   N      |      �   $   �      �      �      	!  0   #!  %   T!  6   z!  0   �!  E   �!  (   ("  #   Q"     u"     �"  S   �"  S   �"     0#      J#     k#     w#  $   �#  _   �#     $  '   ($      P$     q$  ,   �$  <   �$     �$     %     !%         S      ?   *   N         I      F   \              X   M   !   -          5       .   W             )       $   8          :      '           T   1       "   P   =   A   ;   R          #   E      6       3   (   J   G      O   9   @             0                  U   &   /           L   +              ,   	   D                    ]   Y          ^      %                      H   V   <   [          2      7      C          >       B   Z   Q   K   4       
               
 
Note: This output shows SysV services only and does not include native
      systemd services. SysV configuration data might be overridden by native
      systemd configuration.

 
error reading choice
                     [--initscript <service>]
                     [--slave <link> <name> <path>]*
                 --altdir <directory> --admindir <directory>
          %s --add <name>
          %s --del <name>
          %s --override <name>
          %s [--level <levels>] [--type <type>] <name> %s
        alternatives --auto <name>
        alternatives --config <name>
        alternatives --display <name>
        alternatives --remove <name> <path>
        alternatives --set <name> <path>
   Selection    Command
  link currently points to %s
  slave %s: %s
 %s - priority %d
 %s - status is auto.
 %s - status is manual.
 %s already exists
 %s empty!
 %s has not been configured as an alternative for %s
 %s version %s
 %s version %s - Copyright (C) 1997-2000 Red Hat, Inc.
 (would remove %s
 --type must be 'sysv' or 'xinetd'
 Back Cancel Current `best' version is %s.
 Enter to keep the current selection[+], or type selection number:  Failed to forward service request to systemctl: %m
 No services may be managed by ntsysv!
 Note: Forwarding request to 'systemctl %s %s'.
 Ok Press <F1> for more information on a service. Services There are %d programs which provide '%s'.
 There is %d program that provides '%s'.
 This may be freely redistributed under the terms of the GNU Public License.
 This may be freely redistributed under the terms of the GNU Public License.

 What services should be automatically started? You do not have enough privileges to perform this operation.
 You must be root to run %s.
 admindir %s invalid
 altdir %s invalid
 alternatives version %s
 alternatives version %s - Copyright (C) 2001 Red Hat, Inc.
 bad argument to --levels
 bad mode on line 1 of %s
 bad primary link in %s
 cannot determine current run level
 common options: --verbose --test --help --usage --version
 error reading from directory %s: %s
 error reading info for service %s: %s
 error reading information on service %s: %s
 failed to create %s: %s
 failed to glob pattern %s: %s
 failed to link %s -> %s: %s
 failed to make symlink %s: %s
 failed to open %s/init.d: %s
 failed to open %s: %s
 failed to open directory %s: %s
 failed to read %s: %s
 failed to read link %s: %s
 failed to remove %s: %s
 failed to remove link %s: %s
 failed to replace %s with %s: %s
 link %s incorrect for slave %s (%s %s)
 link changed -- setting mode to manual
 link points to no alternative -- setting mode to manual
 missing path for slave %s in %s
 numeric priority expected in %s
 off on only one of --list, --add, --del, or --override may be specified
 only one runlevel may be specified for a chkconfig query
 path %s unexpected in %s
 path to alternate expected in %s
 reading %s
 running %s
 service %s does not support chkconfig
 service %s supports chkconfig, but is not referenced in any runlevel (run 'chkconfig --add %s')
 slave path expected in %s
 the primary link for %s must be %s
 unexpected end of file in %s
 unexpected line in %s: %s
 usage:   %s [--list] [--type <type>] [name]
 usage: alternatives --install <link> <name> <path> <priority>
 would link %s -> %s
 would remove %s
 xinetd based services:
 Project-Id-Version: chkconfig
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2012-02-14 08:17+0000
Last-Translator: Claudio Rodrigo Pereyra Diaz <elsupergomez@gmail.com>
Language-Team: Spanish (Castilian) <trans-es@lists.fedoraproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: es
Plural-Forms: nplurals=2; plural=(n != 1)
 
 
Nota: Esta salida muestra solo servicios SysV y no incluye servicios nativos de systemd. Los datos de configuración SysV puede ser sobre escritos por configuración nativa de systemd.
 
error al leer la selección
                     [--initscript <service>]
                     [--slave <link> <name> <path>]*
                 --altdir <directory> --admindir <directory>
          %s --add <nombre>
          %s --del <nombre>
          %s --override <nombre>
          %s [--level <niveles>] [--type <tipo>] <nombre> %s
        alternatives --auto <name>
        alternatives --config <name>
        alternatives --display <name>
        alternatives --remove <name> <path>
        alternatives --set <name> <path>
   Selección    Comando
 el enlace apunta actualmente a %s
  esclavo %s: %s
 %s - prioridad %d
 %s - el estado es automático.
 %s - el estado es manual.
 %s ya existe
 %s vacío!
 %s no ha sido configurado como una alternativa para %s
 %s versión %s
 %s versión %s - Copyright (C) 1997-2000 Red Hat, Inc.
 (eliminará %s
 --type debe ser 'sysv' o 'xinetd'
 Anterior Cancelar La 'mejor' versión actual es %s.
 Presione Intro para mantener la selección actual[+], o escriba el número de la selección:   Falló al intentar reenviar la petición del servicio a systemctl: %m
 ¡ntsysv no puede gestionar ningún servicio!
 Nota: Reenviando petición a 'systemctl %s %s'.
 Aceptar Pulse <F1> para más información sobre el servicio. Servicios Hay %d programas que proporcionan '%s'.
 Hay %d programa que proporciona '%s'.
 Este programa se distribuirá libremente bajo los términos de la licencia pública de GNU.
 Este programa puede que sea libremente distribuido bajo los términos de la 
licencia pública de GNU.
 ¿Qué servicios se deben ejecutar automáticamente? No tiene los privilegios suficientes para realizar esta operación.
 Tiene que ser root para poder ejecutar el programa %s
 admindir %s inválido
 altdir %s inválido
 versiones alternativas %s
 versiones alternativas %s - Copyright (C) 2001 Red Hat, Inc.
 argumento incorrecto para --levels
 modo incorrecto en la línea 1 de %s
 enlace primario dañado en %s
 No se puede determinar el nivel de ejecución actual
 opciones comunes: --verbose --test --help --usage --version
 error al leer en el directorio %s/init.d: %s
 error al leer información para el servicio %s: %s
 error al leer la información del servicio %s: %s
 error al crear %s: %s
 error al incorporar el patrón %s: %s
 no se pudo enlazar %s -> %s: %s
 no se pudo crear el enlace simbólico %s: %s
 error al abrir %s/init.d: %s
 error al abrir %s: %s
 error al abrir el directorio %s: %s
 error al leer %s: %s
 error al leer enlace %s: %s
 error al eliminar %s: %s
 no se pudo eliminar el enlace simbólico %s: %s
 no se pudo reemplazar  %s con %s: %s
 el enlace %s es incorrecto para el esclavo %s (%s %s)
 enlace modificado -- configurando a modo manual
 puntos de enlace a ninguna alternativa -- configurando a modo manual
 ruta pérdida para el esclavo  %s en %s
 prioridad numérica esperada en %s
 desactivado activo sólo una de las opciones --list, --add, --del o --override puede ser especificada
 sólo un nivel de ejecución puede ser especificado para
una consulta de chkconfig
 ruta %s inesperada en %s
 ruta alternativa esperada en %s
 leyendo %s
 ejecutando %s
 el servicio %s no soporta chkconfig
 El servicio %s soporta chkconfig, pero no está registrado (ejecute 
'chkconfig -- añada %s')
 ruta esclava esperada en %s
 el enlace primario para %s debe ser %s
 fin de archivo inesperado en %s
 línea inesperada en %s: %s
 uso:   %s [--list] [--type <tipo>] [nombre]
 uso: alternativas --install <link> <name> <path> <priority>
 se enlazará %s -> %s
 se removerá  %s
 servicios basados en xinetd: 
 