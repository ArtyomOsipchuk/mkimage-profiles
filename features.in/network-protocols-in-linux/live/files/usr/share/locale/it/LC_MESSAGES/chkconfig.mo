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
            B   5  3   x  &   �  /   �       -        4  *   =  (   h  L   �  M   �  .   ,  =   [     �     �     �     �  ;   �     3     M     g  #     :   �  $   �  &     ,   *     W     p     �     �     �     �            !     8     T     m  !   �  '   �  '   �  8   �      6      W     x     |  A     9   �     �  !        7     C  &   O  `   v     �  #   �          4  ,   O  >   |     �     �     �  V  �     P  �   R  (     .   B  8   q  <   �     �            :   :  "   u  $   �  %   �  /   �  ,        @      X     y     �     �     �     �  
   �  4   �       7   $     \  %   l     �     �  $   �  O   �  =     3   V  -   �     �  6   �     �  *   �  %   %  Y   K  Z   �  8      C   9  +   }     �     �     �  <   �     .  &   M     t  ,   �  :   �  1   �  D   -  A   r     �  0   �  (       ,   )   !   V      x   '   �      �   #   �      �   %   !  %   ?!  3   e!  6   �!  J   �!  (   "  "   D"     g"     k"  Q   n"  A   �"     #  $    #     E#     T#  &   f#  m   �#     �#  '   $     B$     b$  +   }$  C   �$     �$     %     %         S      ?   *   N         I      F   \              X   M   !   -          5       .   W             )       $   8          :      '           T   1       "   P   =   A   ;   R          #   E      6       3   (   J   G      O   9   @             0                  U   &   /           L   +              ,   	   D                    ]   Y          ^      %                      H   V   <   [          2      7      C          >       B   Z   Q   K   4       
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
Last-Translator: notting <notting@redhat.com>
Language-Team: Italian <trans-it@lists.fedoraproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: it
Plural-Forms: nplurals=2; plural=(n != 1)
 
 
Nota: Questo output mostra i servizi SysV solo e non iclude i servizi nativi.
      servizi systemd. Dati di configurazione SysV posso essere sovrascritti dai nativi
      configurazione systemd.

 
errore durante la lettura della scelta
                     [--initscript <servizio>]
                     [--slave <link> <nome> <percorso>]*
                 --altdir <directory> --admindir <directory>
          %s --add <nome>
          %s --del <nome>
          %s --override <nome>
          %s [--level <livelli>] [--type <tipo>] <nome> %s
        alternatives --auto <nome>
        alternatives --config <nome>
        alternatives --display <nome>
        alternatives --remove <nome> <percorso>
        alternatives --set <nome> <percorso>
   Selezione    Comando
  il link attualmente punta a %s
  slave %s: %s
 %s - priorità %d
 %s - stato: auto.
 %s - stato: manuale.
 %s esiste già
 %s vuoto!
 %s non è stato configurato come alternativa per %s
 %s versione %s
 %s versione %s - Copyright (C) 1997-2000 Red Hat, Inc.
 (rimuoverà %s
 --type deve essere 'sysv' o 'xinetd'
 Indietro Annulla La migliore versione attuale è %s.
 Invio per mantenere l'attuale selezione[+], o inserire il numero di selezione:  Fallita la richiesta di inoltro del servizio a systemctl: %m
 I servizi potrebbero non essere gestiti da ntsysv!
 Nota: Inoltro richiesta a 'systemctl %s %s'.
 Ok Premere <F1> per maggiori informazioni su un servizio. Servizi Ci sono %d programmi che forniscono '%s'.
 C'è %d programma che fornisce '%s'.
 Questo software è liberamente distribuibile secondo i termini della GNU Public License.
 Questo software è liberamente distribuibile secondo i termini della GNU Public License.

 Quale servizi dovrebbero essere avviati automaticamente? Non si hanno privilegi sufficienti per eseguire questa operazione.
 E' necessario essere root per eseguire %s.
 admindir %s non valida
 altdir %s non valida
 alternatives versione %s
 alternatives versione %s - Copyright (C) 2001 Red Hat, Inc.
 argomento errato per --levels
 modalità difettosa alla riga 1 di %s
 link primario difettoso in %s
 impossibile determinare il runlevel attuale
 opzioni comuni: --verbose --test --help --usage --version
 errore durante la lettura dalla directory %s: %s
 errore durante la lettura delle informazioni per il servizio %s: %s
 errore durante la lettura delle informazioni sul servizio %s: %s
 impossibile creare %s: %s
 impossibile eseguire il glob del pattern %s: %s
 impossibile creare il link %s -> %s: %s
 impossibile creare il link simbolico %s: %s
 impossibile aprire %s/init.d: %s
 impossibile aprire %s: %s
 impossibile aprire la directory %s: %s
 impossibile leggere %s: %s
 impossibile leggere il link %s: %s
 impossibile rimuovere %s: %s
 impossibile rimuovere il link %s: %s
 impossibile sostituire %s con %s: %s
 il link %s non è corretto per lo slave %s (%s %s)
 il link è cambiato -- modalità impostata su manuale
 il link non punta ad alcuna alternativa -- modalità impostata su manuale
 percorso mancante per lo slave %s in %s
 priorità numerica prevista in %s
 off on può essere specificata solo una delle opzioni --list, --add, --del o --override
 può essere specificato un solo runlevel per una query chkconfig
 percorso %s imprevisto in %s
 percorso alternativo previsto in %s
 lettura di %s
 esecuzione di %s
 il servizio %s non supporta chkconfig
 il servizio %s supporta chkconfig, ma non è referenziato in nessun runlevel (eseguire 'chkconfig --add %s')
 percorso slave previsto in %s
 il link primario per %s deve essere %s
 fine del file imprevista in %s
 riga imprevista in %s: %s
 uso:   %s [--list] [--type·<tipo>] [nome]
 uso:   alternatives --install <link> <nome> <percorso> <priorità>
 creerà un link %s -> %s
 eliminerà %s
 servizi basati su xinetd:
 