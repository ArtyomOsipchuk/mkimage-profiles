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
            B   5  3   x  &   �  /   �       -        4  *   =  (   h  L   �  M   �  .   ,  =   [     �     �     �     �  ;   �     3     M     g  #     :   �  $   �  &     ,   *     W     p     �     �     �     �            !     8     T     m  !   �  '   �  '   �  8   �      6      W     x     |  A     9   �     �  !        7     C  &   O  `   v     �  #   �          4  ,   O  >   |     �     �     �  u  �     o  �   q       -   '  7   U  <   �     �     �     �  :     "   X  $   {  %   �  ,   �  )   �       0   5     f     t     �      �     �     �  9   �     $  9   2     l  -   �     �     �     �  A   �  >     %   ]  8   �     �  0   �     �  (   �  +   "  P   N  Q   �  1   �  I   #  ,   m     �     �     �  @   �  .   +  ,   Z  0   �  (   �  >   �  %      +   F  )   r  '   �  %   �  *   �  (      0   >   (   o   *   �   (   �   %   �   *   !  '   =!  9   e!  -   �!  6   �!  D   "  )   I"  3   s"     �"     �"  I   �"  5   �"  '   -#  .   U#     �#     �#  %   �#  i   �#  %   0$  2   V$  +   �$  $   �$  1   �$  H   %     U%     p%     �%         S      ?   *   N         I      F   \              X   M   !   -          5       .   W             )       $   8          :      '           T   1       "   P   =   A   ;   R          #   E      6       3   (   J   G      O   9   @             0                  U   &   /           L   +              ,   	   D                    ]   Y          ^      %                      H   V   <   [          2      7      C          >       B   Z   Q   K   4       
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
Last-Translator: Ville-Pekka Vainio <vpvainio@iki.fi>
Language-Team: Finnish (http://www.transifex.net/projects/p/fedora/language/fi/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: fi
Plural-Forms: nplurals=2; plural=(n != 1)
 
 
Huomaa: Tämä tuloste näyttää vain SysV-palvelut eikä natiiveja systemd-
palveluita. Natiivit systemd-asetukset saattavat korvata SysV-asetukset.

 
virhe luettaessa valintaa
                     [--initscript <palvelu>]
                     [--slave <linkki> <nimi> <polku>]*
                 --altdir <hakemisto> --admindir <hakemisto>
          %s --add <nimi>
          %s --del <nimi>
          %s --override <nimi>
          %s [--level <tasot>] [--type <tyyppi>] <nimi> %s
        alternatives --auto <nimi>
        alternatives --config <nimi>
        alternatives --display <nimi>
        alternatives --remove <nimi> <polku>
        alternatives --set <nimi> <polku>
   Valinta      Komento
  linkki viittaa tällä hetkellä tiedostoon %s
  orja %s: %s
 %s - prioriteetti %d
 %s - tila on automaattinen.
 %s - tila on käsikäyttöinen.
 %s on jo olemassa
 %s on tyhjä!
 ohjelmaa %s ei ole asetettu sovelluksen %s vaihtoehdoksi
 %s versio %s
 %s versio %s - Tekijänoikeus © 1997-2000 Red Hat, Inc.
 (poistettaisiin %s
 --type on oltava ”sysv” tai ”xinetd”
 Takaisin Peru Nykyinen "paras" versio on %s.
 Enter säilyttää nykyisen valinnan[+], tai anna valintanumero:  Palvelupyynnön välittäminen systemctl:lle epäonnistui: %m
 Hallittavia palveluita ei löytynyt!
 Huomautus: Välitetään pyyntö ”systemctl %s %s”.
 OK Näppäin <F1> antaa lisää tietoja palvelusta. Palvelut %d ohjelma(a) tarjoaa sovelluksen "%s".
 %.0dYksi ohjelma tarjoaa sovelluksen "%s".
 Tätä ohjelmaa saa levittää vapaasti GNU Public Licensen ehtojen mukaisesti.
 Tätä ohjelmaa saa levittää vapaasti GNU Public Licensen ehtojen mukaisesti.

 Mitkä palvelut käynnistetään automaattisesti? Sinulla ei ole riittävästi oikeuksia tämän toiminnon suorittamiseen.
 Vain pääkäyttäjä voi ajaa ohjelman %s.
 admindir %s on virheellinen
 altdir %s on virheellinen
 alternatives versio %s
 alternatives versio %s - Tekijänoikeudet © 2001 Red Hat, Inc.
 virheellinen argumentti valitsimelle --levels
 virheellinen tila rivillä 1 tiedostossa %s
 virheellinen ensisijainen linkki tiedostossa %s
 nykyisen ajotason määritys ei onnistu
 yleiset valitsimet: --verbose --test --help --usage --version
 virhe luettaessa hakemistosta %s: %s
 virhe luettaessa tietoja palvelulle %s: %s
 virhe luettaessa palvelun %s tietoja: %s
 tiedoston %s luominen epäonnistui: %s
 hahmon %s täsmäys epäonnistui: %s
 linkin %s -> %s luominen epäonnistui: %s
 symlinkin %s tekeminen epäonnistui: %s
 tiedoston %s/init.d avaaminen ei onnistunut: %s
 tiedoston %s avaaminen epäonnistui: %s
 hakemiston %s avaaminen ei onnistunut: %s
 tiedoston %s lukeminen epäonnistui: %s
 linkin %s lukeminen epäonnistui: %s
 tiedoston %s poistaminen epäonnistui: %s
 linkin %s poistaminen epäonnistui: %s
 tiedoston %s korvaaminen tiedostolla %s epäonnistui: %s
 linkki %s on virheellinen orjalle %s (%s %s)
 linkki muutettu -- asetetaan tila käsikäyttöiseksi
 linkki ei osoita vaihtoehtoon -- asetetaan tila käsikäyttöiseksi
 puuttuva polku orjalle %s tiedostossa %s
 odotettiin numeerista prioriteettia tiedostossa %s
 ei on vain yksi valitsimista --list, --add, --del tai --override voidaan antaa
 chkconfig-kyselyssä voidaan antaa vain yksi ajotaso
 polku %s on odottamaton tiedostossa %s
 odotettiin polkua vaihtoehtoon tiedostossa %s
 luetaan %s
 suoritetaan %s
 palvelulla %s ei ole chkconfig-tukea
 palvelulla %s on chkconfig-tuki, mutta siihen ei viitata millään ajotasolla (aja "chkconfig --add %s")
 odotettiin orjapolkua tiedostossa %s
 ensisijaisen linkin sovellukselle %s on oltava %s
 odottamaton tiedoston loppu tiedostossa %s
 odottamaton rivi tiedostossa %s: %s
 käyttö:   %s [--list] [--type <tyyppi>] [nimi]
 käyttö: alternatives --install <linkki> <nimi> <polku> <prioriteetti>
 linkitettäisiin %s -> %s
 poistetettaisiin tiedosto %s
 xinetd-pohjaiset palvelut:
 