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
            B   5  3   x  &   �  /   �       -        4  *   =  (   h  L   �  M   �  .   ,  =   [     �     �     �     �  ;   �     3     M     g  #     :   �  $   �  &     ,   *     W     p     �     �     �     �            !     8     T     m  !   �  '   �  '   �  8   �      6      W     x     |  A     9   �     �  !        7     C  &   O  `   v     �  #   �          4  ,   O  >   |     �     �     �  b  �     \  �   ^  +   +  ,   W  7   �  <   �     �          -  :   M  !   �  #   �  &   �  +   �  )   !     K     b     }     �     �     �     �     �  1   �     )  6   8     o  #   �     �  
   �  #   �  f   �  M   C  0   �  6   �     �  3        5  (   =  %   f  m   �  M   �  2   H  ?   {  +   �     �            ;   9  %   u  ,   �  '   �  1   �  C   "  :   f  D   �  B   �     )   +   E   %   q   -   �   "   �      �   (   !     -!  &   J!     q!  (   �!  (   �!  6   �!  5   "  G   O"  /   �"  '   �"     �"     �"  P   #  M   T#     �#  &   �#     �#     �#  0   $  �   D$      �$  (   �$  '   %  !   ;%  2   ]%  G   �%     �%     �%     &         S      ?   *   N         I      F   \              X   M   !   -          5       .   W             )       $   8          :      '           T   1       "   P   =   A   ;   R          #   E      6       3   (   J   G      O   9   @             0                  U   &   /           L   +              ,   	   D                    ]   Y          ^      %                      H   V   <   [          2      7      C          >       B   Z   Q   K   4       
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
Last-Translator: Bernabé Borrero <bernabeborrero@gmail.com>
Language-Team: Catalan <fedora@llistes.softcatala.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: ca
Plural-Forms: nplurals=2; plural=(n != 1)
 
 
Nota: Aquesta sortida només mostra els serveis SysV i no inclueix els serveis
      natius de systemd. Les dades de configuració de SysV es sobreescriuran per la configuració
      nativa de systemd.
 
s'ha produït un error en llegir l'opció
                     [--initscript <servei>]
                     [--slave <enllaç> <nom> <camí>]*
                 --altdir <directori> --admindir <directori>
          %s --add <nom>
          %s –-del <nom>
          %s –-override <nom>
          %s [--level <nivells>] [--type <tipus>] <nom> %s
        alternatives --auto <nom>
        alternatives --config <nom>
         alternatives  --display <nom>
        alternatives --remove <nom> <camí>
         alternatives --set <nom> <camí>
   Selecció     Ordre
  l'enllaç assenyala a %s
  esclau %s: %s
 %s - prioritat %d
 %s - l'estat és automàtic.
 %s - l'estat és manual.
 %s ja existeix
 %s està buit
 no s'ha configurat %s com a alternativa per a %s
 %s versió %s
 %s versió %s - Copyright (C) 1997-2000 Red Hat, Inc.
 (se suprimiria %s
 --type ha de ser 'sysv' o 'xinetd'
 Enrere Cancel·la La 'millor' versió actual és %s.
 Premeu la tecla de retorn per mantenir la selecció actual[+], o teclegeu el número de la selecció:  S'ha produït un error transmetent la sol·licitud de servei a systemctl: %m
 No hi ha cap servei que ntsysv pugui gestionar.
 Nota: transmetent sol·licitud a «systemctl %s %s».
 D'acord Premeu <F1> per a més informació sobre un servei. Serveis Hi ha %d programes que proveeixen '%s'.
 Hi ha %d programa que proveeix '%s'.
 Aquest programari es pot distribuir lliurement d'acord amb els termes de la Llicència Pública General GNU.
 Es pot distribuir lliurement sota els termes de la llicència pública GNU.

 Quins serveis s'haurien d'iniciar automàticament? No teniu suficients privilegis per executar aquesta operació.
 Heu de ser el superusuari per executar %s.
 l'admindir %s no és vàlid
 l'altdir %s no és vàlid
 versions alternatives %s
 alternatives versió %s - Copyright (C) 2001 Red Hat, Inc.
 l'argument de --levels no és vàlid
 el mode a la línia 1 de %s no és correcte
 l'enllaç primari a %s no és correcte
 no es pot determinar l'actual nivell d'execució
 opcions comunes: --verbose –-test –-help –-usage -–version
 s'ha produït un error en llegir des del directori %s: %s
 s'ha produït un error en llegir la informació per al sevei %s: %s
 s'ha produït un error en llegir la informació del servei %s: %s
 no s'ha pogut crear %s: %s
 no s'ha pogut globalitzar el patró %s: %s
 no s'ha pogut enllaçar %s -> %s: %s
 no s'ha pogut fer l'enllaç simbòlic %s: %s
 no s'ha pogut obrir %s/init.d: %s
 no s'ha pogut obrir %s: %s
 no s'ha pogut obrir el directori %s: %s
 no s'ha pogut llegir %s: %s
 no s'ha pogut llegir l'enllaç %s: %s
 no s'ha pogut eliminar %s: %s
 no s'ha pogut eliminar l'enllaç %s: %s
 no s'ha pogut reemplaçar %s amb %s: %s
 l'enllaç %s és incorrecte per a l'esclau %s (%s %s)
 l'enllaç ha canviat –- es canviarà a mode manual
 l'enllaç no assenyala a cap alternativa -- es canviarà a mode manual
 no s'ha trobat el camí per a l'esclau %s a %s
 s'esperava la prioritat numèrica a %s
 aturat executant-se només es pot especificar una de les opcions --list, --add, --del, o --override
 només es pot especificar un nivell d'execució per a una consulta chkconfig
 no s'esperava el camí %s a %s
 s'esperava el camí per alternar a %s
 s'està llegint %s
 s'està executant %s
 el servei %s no és compatible amb el chkconfig
 el servei %s és compatible amb el chkconfig, però no està referenciat en cap nivell d'execució (executeu 'chkconfig –add %s')
 s'esperava el camí esclau a %s
 l'enllaç primari per a %s ha de ser %s
 no s'esperava el final del fitxer a %s
 no s'esperava la línia a %s: %s
 forma d'ús:   %s [--list] [--type <tipus>] [nom]
 forma d'ús: alternatives --install <enllaç> <nom> <camí> <prioriat>
 s'enllaçaria %s -> %s
 se suprimiria %s
 serveis basats en xinetd:
 