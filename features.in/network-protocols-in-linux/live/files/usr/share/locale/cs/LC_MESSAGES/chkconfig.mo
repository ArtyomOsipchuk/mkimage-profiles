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
            B   5  3   x  &   �  /   �       -        4  *   =  (   h  L   �  M   �  .   ,  =   [     �     �     �     �  ;   �     3     M     g  #     :   �  $   �  &     ,   *     W     p     �     �     �     �            !     8     T     m  !   �  '   �  '   �  8   �      6      W     x     |  A     9   �     �  !        7     C  &   O  `   v     �  #   �          4  ,   O  >   |     �     �     �  �  �     �  �   �     1  /   L  :   |  @   �     �           0  <   Q  &   �  (   �  )   �  0     -   9     g  "   �     �     �     �     �     �       *        J  4   W     �  '   �     �     �  %   �  K   �  5   F  :   |  3   �     �  1   �           (     F  H   b  I   �  2   �  >   (  +   g     �     �     �  9   �            1     R  "   r  C   �  '   �  0     0   2     c      |  $   �  *   �     �        "   &      I      _      {      �      �   3   �   2   !  A   7!     y!  &   �!     �!     �!  T   �!  4   "     Q"  '   o"     �"     �"  !   �"  h   �"  )   :#  &   d#  "   �#      �#  /   �#  F   �#     F$     c$     t$         S      ?   *   N         I      F   \              X   M   !   -          5       .   W             )       $   8          :      '           T   1       "   P   =   A   ;   R          #   E      6       3   (   J   G      O   9   @             0                  U   &   /           L   +              ,   	   D                    ]   Y          ^      %                      H   V   <   [          2      7      C          >       B   Z   Q   K   4       
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
Last-Translator: Jan Varta <jan.varta@atlas.cz>
Language-Team: Czech (http://www.transifex.net/projects/p/fedora/language/cs/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: cs
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2
 
 
Pozn.: Tento výstup zobrazuje pouze služby SysV a neobsahuje nativní
      služby systemd. Konfigurační data SysV mohou být přepsána
      konfigurací systemd.

 
chyba při čtení volby
                       [--initscript <služba>]
                       [--slave <linka> <jméno> <cesta>]*
                     --altdir <adresář> --admindir <adresář>
          %s --add <jméno>
          %s --del <jméno>
          %s --override <jméno>
          %s [--level <úrovně>] [--type <typ>] <jméno> %s
          alternatives --auto <jméno>
          alternatives --config <jméno>
          alternatives --display <jméno>
          alternatives --remove <jméno> <cesta>
          alternatives --set <jméno> <cesta>
   Výběr        Příkaz
  linka momentálně ukazuje na %s
  podřízený %s: %s
 %s - priorita %d
 %s - stav je auto.
 %s - stav je manuální.
 %s již existuje
 %s je prázdný!
 %s nebyl nastaven jako alternativa pro %s
 %s verze %s
 %s verze %s - Copyright (C) 1997-2000 Red Hat, Inc.
 (odstranil by %s
 --type musí být 'sysv' nebo 'xinetd'
 Zpět Zrušit Aktuální `nejlepší' verze je %s.
 Enterem zachováte aktuální výběr [+], nebo napište číslo výběru:  Předání požadavku systemctl službou %m selhalo.
 Žádné služby nemohou být spravovány pomocí ntsysv!
 Pozn.: Předávání požadavku 'systemctl %s %s'.
 Ok Pro další informace o službě stiskněte <F1>. Služby %d programů poskytuje '%s'.
 %d program poskytuje '%s'.
 Program může být volně šířen podle podmínek GNU Public License.
 Program může být volně šířen podle podmínek GNU Public License.

 Které služby mají být automaticky spouštěny? Nemáte dostatečná oprávnění k provedení této operace.
 Musíte být root, abyste mohl spustit %s.
 admindir %s neplatný
 altdir %s neplatný
 alternatives verze %s
 alternatives verze %s - Copyright (C) 2001 Red Hat, Inc.
 chybný argument volby --levels
 špatný režim na řádku 1 %s
 špatný primární odkaz v %s
 nemohu určit aktuální runlevel
 společné přepínače: --verbose --test --help --usage --version
 chyba při čtení z adresáře %s: %s
 chyba při čtení informací o službě %s: %s
 chyba při čtení informací o službě %s: %s
 nemohu vytvořit %s: %s
 nemohu expandovat vzorek %s: %s
 nemohu vytvořit linku %s -> %s: %s
 nemohu vytvořit symbolický odkaz %s: %s
 nemohu otevřít %s/init.d: %s
 nemohu otevřít %s: %s
 nemohu otevřít adresář %s: %s
 nemohu číst %s: %s
 nemohu číst linku %s: %s
 nemohu odstranit %s: %s
 nemohu odstranit linku %s: %s
 nemohu nahradit %s s %s: %s
 linka %s nesprávný pro podřízeného %s (%s %s)
 linka změněna -- nastavuji režim na manuální
 linka neukazuje na alternativu -- nastavuji režim na manuální
 chybí cesta pro slave %s v %s
 číselná priorita očekávána v %s
 off on může být zadán pouze jeden z přepínačů --list, --add, --del nebo --override
 při dotazu může být zadán pouze jeden runlevel
 neočekávaná cesta %s v %s
 cesta k alternativě očekávána v %s
 čtu %s
 spouštím %s
 služba %s chkconfig nepodporuje
 služba %s podporuje chkconfig, ale není použita v žádném runlevelu (zadejte 'chkconfig --add %s')
 cesta k podřízenému očekávána v %s
 primární linka pro %s musí být %s
 neočekávaný konec souboru v %s
 neočekávaný řádek v %s: %s
 použití: %s [--list] [--type <typ>] [jméno]
 použití: alternatives --install <linka> <jméno> <cesta> <priorita>
 vytvořil by linku %s -> %s
 odstranil by %s
 služby založené na xinetd:
 