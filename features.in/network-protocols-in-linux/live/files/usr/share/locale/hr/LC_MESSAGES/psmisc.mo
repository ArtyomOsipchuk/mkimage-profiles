��    a      $  �   ,      8  l   9     �  �  �  `   ~  b   �  M   B  N   �  p   �  �   P  q   �  �   d  �   4  �   #  �   �  #   �     �     �     �  )     	   -  3   7     k  �   �        ,   7  $   d     �      �     �     �  #   �  !   "     D     X  <   q  <   �  %   �  %        7     V     q     �     �     �     �     �     �  �     &   �     �          -  �   D  d   '     �  $   �  u   �  C   >  =   �     �  &   �  +         ,  (   =  )   f     �     �    �     �  (   K   /  t   �   �"  }   `#  |   �#  .   [$  F   �$  "   �$  -   �$     "%  
   B%     M%  2   `%  $   �%  ,   �%  '   �%  '   &     5&     <&  +   P&     |&     �&     �&     �&     �&     �&     �&  *  �&  �   �(     y)  �  �)  t   n-  n   �-  S   R.  S   �.  �   �.  �   �/  �   40  �   �0  �   �1  �   t2  �   O3  $   �3      $4     E4     ^4  -   y4     �4  C   �4     �4  �   5  +   �5  =   �5  .   6  #   >6  +   b6  )   �6  (   �6  6   �6  *   7  $   C7  -   h7  <   �7  <   �7  $   8  %   58  !   [8      }8  .   �8  +   �8     �8     
9     #9     A9  &   Y9  �   �9  7   ]:  #   �:     �:     �:  �   �:  a   �;  %   /<     U<  t   t<  B   �<  @   ,=  '   m=      �=  D   �=     �=  0   >  7   B>  (   z>     �>  {  �>  |   =C  )   �C  A  �C  �   &F  ~   �F  ~   ]G  H   �G  D   %H     jH  ;   �H  &   �H  
   �H     �H  2   I  #   >I  4   bI  #   �I  5   �I     �I     �I  @   J     SJ     hJ  	   |J     �J     �J  	   �J     �J     A   "           N   H   >         2      L   G                  \           P   (       I           	   Y   .      8       Q                                C   1   +   0   D      3             T       ,         *       '   R   F   $          V          /              K              -   ?             B       ^   _   :              U           )   X      
       S       `   7   %   &   O   4      [   Z   a      =       @      J   #   5   <   W   M                E      6   ;   !   ]   9    
  PID    start at this PID; default is 1 (init)
  USER   show only trees rooted at processes of this user

 
Display a tree of processes.

        killall -l, --list
       killall -V, --version

  -e,--exact          require exact match for very long names
  -I,--ignore-case    case insensitive process name match
  -g,--process-group  kill process group instead of process
  -y,--younger-than   kill processes younger than TIME
  -o,--older-than     kill processes older than TIME
  -i,--interactive    ask for confirmation before killing
  -l,--list           list all known signal names
  -q,--quiet          don't print complaints
  -r,--regexp         interpret NAME as an extended regular expression
  -s,--signal SIGNAL  send this signal instead of SIGTERM
  -u,--user USER      kill only process(es) running as USER
  -v,--verbose        report if the signal was successfully sent
  -V,--version        display version information
  -w,--wait           wait for processes to die
  -n,--ns PID         match processes that belong to the same namespaces
                      as PID
   -                     reset options

  udp/tcp names: [local_port][,[rmt_host][,[rmt_port]]]

   -4,--ipv4             search IPv4 sockets only
  -6,--ipv6             search IPv6 sockets only
   -C, --color=TYPE    color process by attribute
                      (age)
   -Z, --security-context
                      show SELinux security contexts
   -Z,--context REGEXP kill only process(es) having context
                      (must precede other arguments)
   -a, --arguments     show command line arguments
  -A, --ascii         use ASCII line drawing characters
  -c, --compact-not   don't compact identical subtrees
   -g, --show-pgids    show process group ids; implies -c
  -G, --vt100         use VT100 line drawing characters
   -h, --highlight-all highlight current process and its ancestors
  -H PID, --highlight-pid=PID
                      highlight this process and its ancestors
  -l, --long          don't truncate long lines
   -n, --numeric-sort  sort output by PID
  -N TYPE, --ns-sort=TYPE
                      sort output by this namespace type
                              (cgroup, ipc, mnt, net, pid, user, uts)
  -p, --show-pids     show PIDs; implies -c
   -s, --show-parents  show parents of the selected process
  -S, --ns-changes    show namespace transitions
  -t, --thread-names  show full thread names
  -T, --hide-threads  hide threads, show only processes
   -u, --uid-changes   show uid transitions
  -U, --unicode       use UTF-8 (Unicode) line drawing characters
  -V, --version       display version information
 %*s USER        PID ACCESS COMMAND
 %s is empty (not mounted ?)
 %s: Invalid option %s
 %s: no process found
 %s: unknown signal; %s -l lists signals.
 (unknown) /proc is not mounted, cannot stat /proc/self/stat.
 Bad regular expression: %s
 CPU Times
  This Process    (user system guest blkio): %6.2f %6.2f %6.2f %6.2f
  Child processes (user system guest):       %6.2f %6.2f %6.2f
 Can't get terminal capabilities
 Cannot allocate memory for matched proc: %s
 Cannot find socket's device number.
 Cannot find user %s
 Cannot open /proc directory: %s
 Cannot open /proc/net/unix: %s
 Cannot open a network socket.
 Cannot open protocol file "%s": %s
 Cannot resolve local port %s: %s
 Cannot stat %s: %s
 Cannot stat file %s: %s
 Copyright (C) 1993-2017 Werner Almesberger and Craig Small

 Copyright (C) 1993-2019 Werner Almesberger and Craig Small

 Copyright (C) 2007 Trent Waddington

 Copyright (C) 2009-2017 Craig Small

 Could not kill process %d: %s
 Error attaching to pid %i
 Invalid namespace PID Invalid namespace name Invalid option Invalid time format Kill %s(%s%d) ? (y/N)  Kill process %d ? (y/N)  Killed %s(%s%d) with signal %d
 Memory
  Vsize:       %-10s
  RSS:         %-10s 		 RSS Limit: %s
  Code Start:  %#-10lx		 Code Stop:  %#-10lx
  Stack Start: %#-10lx
  Stack Pointer (ESP): %#10lx	 Inst Pointer (EIP): %#10lx
 Namespace option requires an argument. No process specification given No processes found.
 No such user name: %s
 PSmisc comes with ABSOLUTELY NO WARRANTY.
This is free software, and you are welcome to redistribute it under
the terms of the GNU General Public License.
For more information about these matters, see the files named COPYING.
 Page Faults
  This Process    (minor major): %8lu  %8lu
  Child Processes (minor major): %8lu  %8lu
 Press return to close
 Process with pid %d does not exist.
 Process, Group and Session IDs
  Process ID: %d		  Parent ID: %d
    Group ID: %d		 Session ID: %d
  T Group ID: %d

 Process: %-14s		State: %c (%s)
  CPU#:  %-3d		TTY: %s	Threads: %ld
 Scheduling
  Policy: %s
  Nice:   %ld 		 RT Priority: %ld %s
 Signal %s(%s%d) ? (y/N)  Specified filename %s does not exist.
 Specified filename %s is not a mountpoint.
 TERM is not set
 Unable to allocate memory for proc_info
 Unable to open stat file for pid %d (%s)
 Unable to scan stat file Unknown local port AF %d
 Usage: fuser [-fIMuvw] [-a|-s] [-4|-6] [-c|-m|-n SPACE]
             [-k [-i] [-SIGNAL]] NAME...
       fuser -l
       fuser -V
Show which processes use the named files, sockets, or filesystems.

  -a,--all              display unused files too
  -i,--interactive      ask before killing (ignored without -k)
  -I,--inode            use always inodes to compare files
  -k,--kill             kill processes accessing the named file
  -l,--list-signals     list available signal names
  -m,--mount            show all processes using the named filesystems or
                        block device
  -M,--ismountpoint     fulfill request only if NAME is a mount point
  -n,--namespace SPACE  search in this name space (file, udp, or tcp)
  -s,--silent           silent operation
  -SIGNAL               send this signal instead of SIGKILL
  -u,--user             display user IDs
  -v,--verbose          verbose output
  -w,--writeonly        kill only processes with write access
  -V,--version          display version information
 Usage: killall [ -Z CONTEXT ] [ -u USER ] [ -y TIME ] [ -o TIME ] [ -eIgiqrvw ]
               [ -s SIGNAL | -SIGNAL ] NAME...
 Usage: killall [OPTION]... [--] NAME...
 Usage: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8, --eight-bit-clean        output 8 bit clean streams.
    -n, --no-headers             don't display read/write from fd headers.
    -c, --follow                 peek at any new child processes too.
    -t, --tgid                   peek at all threads where tgid equals <pid>.
    -d, --duplicates-removed     remove duplicate read/writes from the output.
    -V, --version                prints version info.
    -h, --help                   prints this help.

  Press CTRL-C to end output.
 Usage: prtstat [options] PID ...
       prtstat -V
Print information about a process
    -r,--raw       Raw display of information
    -V,--version   Display version information and exit
 Usage: pstree [-acglpsStTuZ] [ -h | -H PID ] [ -n | -N type ]
              [ -A | -G | -U ] [ PID | USER ]
   or: pstree -V
 Usage: pstree [-acglpsStTu] [ -h | -H PID ] [ -n | -N type ]
              [ -A | -G | -U ] [ PID | USER ]
   or: pstree -V
 You can only use files with mountpoint options You cannot search for only IPv4 and only IPv6 sockets at the same time You must provide at least one PID. all option cannot be used with silent option. asprintf in print_stat failed.
 disk sleep fuser (PSmisc) %s
 killall: %s lacks process entries (not mounted ?)
 killall: Bad regular expression: %s
 killall: Cannot get UID from process status
 killall: Maximum number of names is %d
 killall: skipping partial match %s(%d)
 paging peekfd (PSmisc) %s
 procfs file for %s namespace not available
 prtstat (PSmisc) %s
 pstree (PSmisc) %s
 running sleeping traced unknown zombie Project-Id-Version: psmisc 23.3
Report-Msgid-Bugs-To: csmall@enc.com.au
PO-Revision-Date: 2019-10-24 11:42-0700
Last-Translator: Božidar Putanec <bozidarp@yahoo.com>
Language-Team: Croatian <lokalizacija@linux.hr>
Language: hr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bugs: Report translation errors to the Language-Team address
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Generator: Poedit 2.2.4
X-Poedit-SourceCharset: UTF-8
 
  PID       započne s ovim PID-om; zadano je 1 (init)
  KORISNIK  pokaže samo stablo s korijenom u procesima ovoga KORISNIKA

 
Prikaže stablo procesa.

        killall -l, --list
       killall -V, --version

  -e, --exact          zahtjeva točno podudaranje za vrlo dugačka imena
  -I, --ignore-case    ignorira veličinu slova prilikom pretrage procesa
  -g, --process-group  ubije procesnu grupu umjesto procesa
  -y, --younger-than   ubije procese mlađe od VREMENA
  -o, --older-than     ubije procese starije od VREMENA
  -i, --interactive    pita prije ubijanja
  -l, --list           ispiše imena svih poznatih signala
  -q, --quiet          ne ispisuje prigovore
  -r, --regexp         interpretira IME kao prošireni regularni izraz
  -s, --signal SIGNAL  pošalje SIGNAL umjesto SIGTERM
  -u, --user KORISNIK  ubija samo proces(e) od KORISNIKA
  -v, --verbose        javlja ako je signal uspješno poslan
  -V, --version        informacija o ovoj inačici
  -w, --wait           čeka dok proces ne umre
  -n, --ns PID         podudara samo procese koji pripadaju istom imenskom
                         prostoru kao i PID
   -                      resetira opcije

  udp/tcp imena: [lokalni_port][,[udaljeno_računalo][,[udaljeni_port]]]

   -4, --ipv4             pretraži samo IPv4 utičnice
  -6, --ipv6             pretraži samo IPv6 utičnice
   -C, --color=VRSTA   procesi obojani prema atributu
                      (vijek)
   -Z, --security-context
                      pokaže SELinux sigurnosni kontekst
   -Z, --context REGEXP ubije samo proces(e) s odgovarajućim kontekstom
                        (mora prethoditi ostalim argumentima)
   -a, --arguments     prikaže argumente na naredbenom retku 
  -A, --ascii         koristi ASCII znakove za crtanje linija
  -c, --compact-not   ne suzbija identična podstabla
   -g, --show-pgids    prikaže id-ove procesnih grupa; implicira -c
  -G, --vt100         koristi VT100 znakove za crtanje linija
   -h, --highlight-all istakne trenutni proces i njegove pretke
  -H PID, --highlight-pid=PID
                      istakne taj proces i njegove pretke
  -l, --long          ne kratiti dugačke linije
   -n, --numeric-sort  izlaz svrsta po PID-ovima
  -N TYPE, --ns-sort=VRSTA  izlaz svrsta po toj vrsti imenskog prostora
                              (cgroup, ipc, mnt, net, pid, user, uts)
  -p, --show-pids     Prikaže PID-ove; implicira -c
   -s, --show-parents  pokaže pretke odabranih procesa
  -S, --ns-changes    pokaže tranzicije imenskih prostora
  -t, --thread-names  pokaže puno ime dretvi
  -T, --hide-threads  skrije dretve, pokaže samo procese
   -u, --uid-changes   pokaže tranzicije UID-ova
  -U, --unicode       koristi UTF-8 (Unicode) znakove za crtanje linija
  -V, --version       informacije o inačici programa
 %*s KORISNIK    PID PRISTUP NAREDBA
 %s je prazan -- je li montiran?
 %s: Nevaljana opcija %s
 %s: proces nije pronađen
 %s: nepoznati signal; %s -l ispisuje signale
 (nepoznato) /proc nije montiran, nije moguće odrediti status /proc/self/stat.
 Loši regularni izraz: %s
 CPU vremena
  Ovaj proces   (korisnik sustav gost blkio): %6.2f %6.2f %6.2f %6.2f
  Djeca-procesi (korisnik sustav gost):       %6.2f %6.2f %6.2f
 Nije moguće otkriti mogućnosti terminala
 Nije moguće dodijeliti memoriju za odgovarajući proces: %s
 Nije moguće pronaći broj uređaja utičnice
 Nije moguće pronaći korisnika %s
 Nije moguće otvoriti direktorij /proc: %s
 Nije moguće otvoriti /proc/net/unix: %s
 Nije moguće otvoriti mrežnu utičnicu
 Nije moguće otvoriti datoteku protokola „%s“: %s
 Nije moguće odrediti lokalni port %s: %s
 Nije moguće odrediti status %s: %s
 Nije moguće odrediti status datoteke %s: %s
 Copyright (C) 1993-2017 Werner Almesberger and Craig Small

 Copyright (C) 1993-2019 Werner Almesberger and Craig Small

 Copyright © 2007 Trent Waddington

 Copyright (C) 2009-2017 Craig Small

 Nije moguće ubiti proces %d: %s
 Greška pridruživanja PID-u %i
 Nevaljani naziv za imenski prostor (namespace) Nevaljano ime imenskog prostora (namespace) Nevaljana opcija Nevaljani format vremena Ubiti proces %s(%s%d)? (d/N)  Ubiti proces %d? (d/N)  Proces %s(%s%d) ubijen je signalom %d
 Memorija
  Vsize:       %-10s
  RSS:         %-10s 		 RSS granična vrijednost: %s
  Code Start:  %#-10lx		 Konac koda:  %#-10lx
  Stack Start: %#-10lx
  Stack Pointer (ESP): %#10lx	 Pokazivač instrukcije (EIP): %#10lx
 Opcija imenskog prostora (namespace) zahtijeva argument Nije navedena specifikacija procesa Nijedan proces nije pronađen.
 Nema takvog korisnika: %s
 Za PSmisc NEMA APSOLUTNO NIKAKVIH JAMSTVA.
Ovo je slobodan softver: slobodno ga mijenjajte i dijelite
pod uvjetima opisanim u GNU General Public License.
Dodatne obavijesti o licenciji potražite u datoteci COPYING.
 Page Faults
  Ovaj proces    (minor major): %8lu  %8lu
  Dijete-proces (minor major): %8lu  %8lu
 Pritisnite Return/Enter da zatvorite
 Proces s PID-om %d ne postoji
 ID-ovi procesa, grupe i sesije
  Proces ID: %d		  ID roditelja: %d
    Grup ID: %d		 ID sesije: %d
  T Grup ID: %d

 Proces: %-14s		Stanje: %c (%s)
  CPU#:  %-3d		TTY: %s	Dretve: %ld
 Planiranje
  Pravilnik: %s
  Nice:   %ld 		 RT Priority: %ld %s
 Procesu %s(%s%d) poslati signal? (d/N)  Navedena datoteka %s ne postoji
 Navedeni naziv (datoteke) %s nije točka za montiranje (mountpoint)
 TERM nije postavljen
 Nije moguće dodijeliti memoriju za proc_info()
 Nije moguće otvoriti statusnu datoteku za PID %d (%s)
 Nije moguće skanirati statusnu datoteku Nepoznati lokalni port AF %d
 Uporaba: fuser [-fMuvw] [-a|-s] [-4|-6] [-c|-m|-n PROSTOR]
               [-k [-i] [-SIGNAL]] IME...
         fuser -l
         fuser -V
Prikaže procese koji koriste navedene datoteke, utičnice ili datotečne sustave.

  -a, --all              pokaže i nekorištene datoteke
  -i, --interactive      pita prije ubijanja (ignorira se bez -k)
  -I, --inode            uvijek rabi inodes za usporedbu datoteka
  -k, --kill             ubije procese koji pristupaju navedenoj datoteci
  -l, --list-signals     ispiše imena dostupnih signala
  -m, --mount            pokaže sve procese koji koriste navedene
                           datotečne sustave ili blokovske uređaje
  -M, --ismountpoint     izvrši zahtjev samo ako je IME točka montiranja
  -n, --namespace PROSTOR  traži u ovom imenskom PROSTORU (file, udp ili tcp)
  -s, --silent           tihi rad (bez ispisa)
  -SIGNAL                pošalje SIGNAL umjesto SIGKILL
  -u, --user             pokaže korisničke oznake (ID)
  -v, --verbose          opširni ispis
  -w, --writeonly        ubije sve procese s dozvolom pisanja
  -V, --version          informacije o ovoj inačici
 Uporaba: killall [-Z KONTEKST] [-u KORISNIK] [-y TIME] [-o TIME] [-eIgiqrvw]
                 [-s -SIGNAL | -SIGNAL] IME...
 Uporaba: killall [OPCIJA]... [--] IME...
 Uporaba: peekfd [-8] [-n] [-c] [-d] [-V] [-h] <pid> [<fd> ..]
    -8, --eight-bit-clean        producira čisti 8-bitni izlaz
    -n, --no-headers             ne prikazuje čitanje i pisanje iz fd zaglavlja
    -c, --follow                 također gleda svaki novi dijete-proces
    -t, --tgid                   gleda sve dretve za koje je tgid jednak <pid>
    -d, --duplicates-removed     uklanja sve duplikate na izlazu
    -V, --version                informacije o ovoj inačici
    -h, --help                   ova pomoć

  Pritisnite CTRL-C da zaustavite ispis/izlaz.
 Uporaba: prtstat [opcije] PID ...
         prtstat -V
Ispiše informacije o procesu
    -r, --raw       neobrađeni prikaz informacija
    -V, --version   informacije o ovoj inačici
 Uporaba: pstree [-acglpsStTuZ] [-h | -H PID] [-n | -N vrsta]
              [-A | -G | -U] [PID | KORISNIK]
    ili: pstree -V
 Uporaba: pstree [-acglpsStTu] [-h | -H PID] [-n | -N vrsta]
              [-A | -G | -U ] [PID | KORISNIK]
    ili: pstree -V
 Smijete koristiti samo datoteke uz opcije točke montiranja (mountpoint) Ne možete istovremeno pretraživati samo IPv4 i samo IPv6 utičnice Morate navesti barem jedan PID. Opcija all (-a) ne može se koristiti uz opciju silent (-s) Neuspješni asprintf() u print_stat()
 disk spava fuser (PSmisc) %s
 killall: %s proces nema zapise -- je li montiran?
 killall: Loši regularni izraz: %s
 killall: Nije moguće dobiti UID iz statusa procesa
 killall: Najveći broj imena je %d
 killall: preskače se djelomično podudaranje %s(%d)
 straničenje peekfd (PSmisc) %s
 procfs datoteka za %s imenski prostor (namespace) nije dostupna
 prtstat (PSmisc) %s
 pstree (PSmisc) %s
 pokrenuto u mirovanju praćeno nepoznato zombi 