��    h      \  �   �      �  �   �  �   �	  �  �
    g  �   x  �  u  U  ,  #  �  �  �  F  K     �     �  &   �  #   �     	  !   &     H     d     �  ,   �     �  .   �  '     (   9     b  %   �     �     �     �  *   �  �   �  &   {     �     �     �     �  $   
     /     A  �   \               !     @     P  <   e  #   �     �     �     �  "        /     7  &   J     q     �     �     �     �  )   �        �          ;   &  3   b  /   �  +   �  '   �  #        >     ^     z  \   �     �     �  4        ;  !   Z  0   |  -   �  .   �     
   $   &      K      f      ~      �      �      �      �      �       !     !     )!  ,   8!  *   e!     �!     �!     �!     �!     �!     �!     �!  �  "  �   �#  �   �$  �  �%  �  �'    ))  �  5*    �+  g  Z-  �  �.  �  �0     *2     E2  /   `2  '   �2  $   �2  /   �2     3     +3     I3  )   c3  !   �3  1   �3  &   �3  '   4     04  &   M4     t4     w4     z4  <   �4  �   �4  -   [5     �5     �5     �5     �5     �5     6     "6  �   86     *7     @7     L7     h7     y7  Y   �7     �7     	8  %   "8  d   H8  '   �8     �8     �8  '   �8     %9     :9     K9     \9  
   z9  1   �9     �9    �9     �:  9   ;  2   A;  .   t;  *   �;  &   �;  "   �;     <     7<     R<  l   b<     �<     �<  ?   �<     .=  (   K=  +   t=  ,   �=  :   �=     >  &   $>     K>     h>     |>  "   �>     �>     �>     �>     �>     ?     $?     =?  +   F?  *   r?  	   �?  	   �?  	   �?     �?      �?     �?     @     ]   P               -   T   ;   d           (   O   /   B          .   R          %           5   1      V   e   &   0   >   g       :   I   6          M   f       )               S            L      K   b   U   4   *       F           ?      X           J          \   3   C          !      <      N       W   @   Y   c      $   +          A   E   _               	   G       
   8              ,           [       #   H          '      Q   2   h           ^       7   "   a              `       Z   9           =   D       
Context control:
  -B, --before-context=NUM  print NUM lines of leading context
  -A, --after-context=NUM   print NUM lines of trailing context
  -C, --context=NUM         print NUM lines of output context
 
Miscellaneous:
  -s, --no-messages         suppress error messages
  -v, --invert-match        select non-matching lines
  -V, --version             display version information and exit
      --help                display this help text and exit
 
Output control:
  -m, --max-count=NUM       stop after NUM selected lines
  -b, --byte-offset         print the byte offset with output lines
  -n, --line-number         print line number with output lines
      --line-buffered       flush output on every line
  -H, --with-filename       print file name with output lines
  -h, --no-filename         suppress the file name prefix on output
      --label=LABEL         use LABEL as the standard input file name prefix
       --include=GLOB        search only files that match GLOB (a file pattern)
      --exclude=GLOB        skip files that match GLOB
      --exclude-from=FILE   skip files that match any file pattern from FILE
      --exclude-dir=GLOB    skip directories that match GLOB
   -E, --extended-regexp     PATTERNS are extended regular expressions
  -F, --fixed-strings       PATTERNS are strings
  -G, --basic-regexp        PATTERNS are basic regular expressions
  -P, --perl-regexp         PATTERNS are Perl regular expressions
   -I                        equivalent to --binary-files=without-match
  -d, --directories=ACTION  how to handle directories;
                            ACTION is 'read', 'recurse', or 'skip'
  -D, --devices=ACTION      how to handle devices, FIFOs and sockets;
                            ACTION is 'read' or 'skip'
  -r, --recursive           like --directories=recurse
  -R, --dereference-recursive  likewise, but follow all symlinks
   -L, --files-without-match  print only names of FILEs with no selected lines
  -l, --files-with-matches  print only names of FILEs with selected lines
  -c, --count               print only a count of selected lines per FILE
  -T, --initial-tab         make tabs line up (if needed)
  -Z, --null                print 0 byte after FILE name
   -NUM                      same as --context=NUM
      --color[=WHEN],
      --colour[=WHEN]       use markers to highlight the matching strings;
                            WHEN is 'always', 'never', or 'auto'
  -U, --binary              do not strip CR characters at EOL (MSDOS/Windows)

   -e, --regexp=PATTERNS     use PATTERNS for matching
  -f, --file=FILE           take PATTERNS from FILE
  -i, --ignore-case         ignore case distinctions in patterns and data
      --no-ignore-case      do not ignore case distinctions (default)
  -w, --word-regexp         match only whole words
  -x, --line-regexp         match only whole lines
  -z, --null-data           a data line ends in 0 byte, not newline
   -o, --only-matching       show only nonempty parts of lines that match
  -q, --quiet, --silent     suppress all normal output
      --binary-files=TYPE   assume that binary files are TYPE;
                            TYPE is 'binary', 'text', or 'without-match'
  -a, --text                equivalent to --binary-files=text
 %s home page: <%s>
 %s: binary file matches %s: exceeded PCRE's backtracking limit %s: exceeded PCRE's recursion limit %s: exhausted PCRE JIT stack %s: input file is also the output %s: internal PCRE error: %d %s: invalid option -- '%c'
 %s: memory exhausted %s: option '%s%s' doesn't allow an argument
 %s: option '%s%s' is ambiguous
 %s: option '%s%s' is ambiguous; possibilities: %s: option '%s%s' requires an argument
 %s: option requires an argument -- '%c'
 %s: unrecognized option '%s%s'
 %s: warning: recursive directory loop ' (C) (standard input) -P supports only unibyte and UTF-8 locales Example: %s -i 'hello world' menu.h main.c
PATTERNS can contain multiple patterns separated by newlines.

Pattern selection and interpretation:
 General help using GNU software: <%s>
 Invalid back reference Invalid character class name Invalid collation character Invalid content of \{\} Invalid preceding regular expression Invalid range end Invalid regular expression License GPLv3+: GNU GPL version 3 or later <%s>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
 Memory exhausted No match No previous regular expression Packaged by %s
 Packaged by %s (%s)
 Perl matching not supported in a --disable-perl-regexp build Premature end of regular expression Regular expression too big Report %s bugs to: %s
 Report bugs to: %s
 Search for PATTERNS in each FILE.
 Success Trailing backslash Try '%s --help' for more information.
 Unknown system error Unmatched ( or \( Unmatched ) or \) Unmatched [, [^, [:, [., or [= Unmatched \{ Usage: %s [OPTION]... PATTERNS [FILE]...
 Valid arguments are: When FILE is '-', read standard input.  With no FILE, read '.' if
recursive, '-' otherwise.  With fewer than two FILEs, assume -h.
Exit status is 0 if any line is selected, 1 otherwise;
if any error occurs and -q is not given, the exit status is 2.
 Written by %s and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, %s, and others.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
and %s.
 Written by %s, %s, %s,
%s, %s, %s, and %s.
 Written by %s, %s, %s,
%s, %s, and %s.
 Written by %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
and %s.
 Written by %s, %s, and %s.
 Written by %s.
 Written by Mike Haertel and others; see
<https://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS>. ` ambiguous argument %s for %s character class syntax is [[:space:]], not [:space:] conflicting matchers specified exceeded PCRE's line length limit failed to allocate memory for the PCRE JIT stack failed to return to initial working directory failed to set file descriptor text/binary mode input is too large to count internal error (should never happen) invalid argument %s for %s invalid character class invalid content of \{\} invalid context length argument invalid matcher %s invalid max count memory exhausted no syntax specified program error regular expression too big stack overflow the -P option only supports a single pattern unable to record current working directory unbalanced ( unbalanced ) unbalanced [ unfinished \ escape unknown binary-files type unknown devices method write error Project-Id-Version: GNU grep 3.5.16
Report-Msgid-Bugs-To: bug-grep@gnu.org
PO-Revision-Date: 2021-03-17 12:16-0300
Last-Translator: Felipe Castro <fefcas@gmail.com>
Language-Team: Esperanto <translation-team-eo@lists.sourceforge.net>
Language: eo
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Bugs: Report translation errors to the Language-Team address.
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Poedit 2.4.2
 
Regado de la kunteksto:
  -B, --before-context=NOM  montri NOM liniojn da antaŭa kunteksto
  -A, --after-context=NOM   montri NOM liniojn da posta kunteksto
  -C, --context=NOMBRO      egalas al «-A NOMBRO -B NOMBRO»
 
Diversaj:
  -s, --no-messages         subpremi erarmesaĝojn
  -v, --invert-match        elekti la nekongruajn liniojn
  -V, --version             montri programversion kaj eliri
      --help                montri ĉi tiun helpon kaj eliri
 
Regado de la eligo:
  -m, --max-count==NOMBRO   halti post NOMBRO da elektitaj linioj
  -b, --byte-offset         montri la bitoknumeron kun eligataj linioj
  -n, --line-number         montri la lininumeron kun eligataj linioj
      --line-buffered       peli la eligon post ĉiu linio
  -H, --with-filename       montri la dosiernomon antaŭ eligataj linioj
  -h, --no-filename         subpremi la prefiksan dosiernomon ĉe eligo
      --label=ETIKEDO       uzi ETIKEDOn kiel dosiernomon de ĉefenigujo
       --include=ŜABLONO     ekzameni nur dosierojn kiuj kongruas kun ŜABLONO
                              (dosiernomŝablonoj estas "globbing" ŝablonoj)
      --exclude=ŜABLONO     ignori dosierojn kiuj kongruas kun ŜABLONO
      --exclude-from=DSRO   ignori dosierojn kiuj kongruas kun ŝablono en DSRO
      --exclude-dir=ŜABLONO ignori dosierujojn kiuj kongruas kun ŜABLONO
   -E, --extended-regexp     ŜABLONOJ estas etenditaj regulesprimoj
  -F, --fixed-strings       ŜABLONOJ estas signoĉenoj
  -G, --basic-regexp        ŜABLONOJ estas bazaj regulesprimoj  (defaŭlta)
  -P, --perl-regexp         ŜABLONOJ estas regulesprimoj de Perl
   -I                        egalas al «--binary-files=without-match»
  -d, --directories=AGO     kiel trakti dosierujojn; AGO estus 'read' (legi),
                              'recurse' (rikure), aŭ 'skip' (ignori)
  -D, --devices=AGO         kiel trakti specialajn dosierojn;
                              AGO estus 'read' (legi), aŭ 'skip' (ignori)
  -R, -r, --recursive       egalas al «--directories=recurse»
   -L, --files-without-match montri nur nomojn de dosieroj sen trafo
  -l, --files-with-matches  montri nur nomojn de dosieroj kun trafoj
  -c, --count               montri nur la nombron de kongruaj linioj
                              en ĉiu dosiero
  -T, --initial-tab         rektigi la TAB-signojn (se necesas)
  -Z, --null                eligi la bitokon «0» post dosiernomo
   -NOMBRO                   egalas al «--context=NOMBRO»
      --color[=KIAM],
      --colour[=KIAM]       uzi markilojn por distingi la kongruajn ĉenojn;
                              KIAM estus 'always' (ĉiam), 'never' (neniam),
                              aŭ 'auto' (aŭtomate)
  -U, --binary              ne forigi \r-signojn ĉe linifino (MSDOS)

   -e, --regexp=ŜABLONOJ     uzi ŜABLONOJn kiel regulesprimojn
  -f, --file=DOSIERO        akiri la ŝablonojn el DOSIERO
  -i, --ignore-case         ignori diferencojn de uskleco, ŝablone kaj datene
      --no-ignore-case      ne ignori diferencojn de uskleco  (defaŭlta)
  -w, --word-regexp         kongrui nur kun tutaj vortoj
  -x, --line-regexp         kongrui nur kun tutaj linioj
  -z, --null-data           datenlinio finiĝas per bitoko 0, ne per linifino
   -o, --only-matching       montri nur nevakajn kongruajn linipartojn
  -q, --quiet, --silent     subpremi ĉian normalan eligadon
      --binary-files=SPECO  supozi ke duumaj dosieroj estas de SPECO;
                              SPECO estus 'binary' (duuma), 'text' (teksta),
                              aŭ 'without-match' (sen-trafa)
  -a, --text                egalas al «--binary-files=text»
 Hejmpaĝo de «%s»: <%s>
 %s: duuma dosiero kongruas %s: transpasiĝis retroreferencan limon de PCRE %s: transpasiĝis rikuran limon de PCRE %s: la PCRE-JIT-stako tute pleniĝis %s: eniga dosiero estas ankaŭ la eliga dosiero %s: interna eraro en PCRE: %d %s: nevalida opcio -- «%c»
 %s: mankas sufiĉa memoro %s: opcio «%s%s» ne toleras argumenton
 %s: opcio «%s%s» estas ambigua
 %s: opcio «%s%s» estas ambigua; eblaĵoj estas: %s: opcio «%s%s» bezonas argumenton
 %s: opcio bezonas argumenton -- «%c»
 %s: nekonata opcio «%s%s»
 %s: averto: rikura ciklo de dosierujoj » © (ĉefenigujo) opcio «-P» subtenas nur unubajtajn kaj UTF-8-ajn lokaĵojn   
  Ekzemplo: %s -i 'hello world' menu.h main.c

ŜABLONOJ povas esti pluraj ŝablonoj disigitaj per linifinoj.

Elekto kaj interpreto de ŝablono:
 Ĝenerala helpo por uzi GNU-programojn: <%s>
 Nevalida retroreferenco Nevalida nomo de signoklaso Nevalida kunmetita signo Nevalida enhavo de \{\} Nevalida antaŭa regulesprimo Nevalida fino de gamo Nevalida regulesprimo Ĉi tiu estas libera programaro: vi rajtas ĝin ŝanĝi kaj redistribui.
La ĝusta permesilo estas GPLv3+: GNU GPL versio 3 aŭ sekva;
por la kompleta (angla) teksto vidu <%s>.
Ĉi tiu programaro ne garantiatas, ene de la limoj de la leĝo.
 Mankas sufiĉa memoro Neniu trafo Mankas antaŭa regulesprimo Pakigita far %s
 Pakigita far %s (%s)
 Perla kongruo ne funkcias ĉar ĉi tiu programo kompiliĝis kun «--disable-perl-regexp» Neatendita fino de regulesprimo Regulesprimo tro grandas Raportu programmisojn en %s al: <%s>
 Raportu programmisojn al <%s>;
sciigu tradukerarojn al <translation-team-eo@lists.sourceforge.net>.
   
Serĉas ŜABLONOJn en ĉiu DOSIERO.
 Sukceso Malsuprenstreko '\' ĉe la fino Tajpu '%s --help' por pli da informoj.
 Nekonata sistemeraro Senpara ( aŭ \( Senpara ) aŭ \) Senpara [, [^, [:, [., aŭ [= Senpara \{ Uzmaniero:  %s [OPCIO...] ŜABLONOJ [DOSIERO...]
 Validaj argumentoj estas: Kiam DOSIERO estas «-», ĉefenigujo legiĝas.
Kiam DOSIERO mankas, «.» legiĝas se rikura, alie «-» legiĝas.
Kiam malpli ol du DOSIEROj indikatas, «-h» supoziĝas.
Elirstato estas 0 se iu linio elektiĝis, alie 1;
se iu eraro okazis kaj «-q» ne indikatis, elirstato estas 2.
 Verkita de %s kaj %s.
 Verkita de %s, %s, %s,
%s, %s, %s, %s,
%s, %s kaj aliaj.
 Verkita de %s, %s, %s,
%s, %s, %s, %s,
%s kaj %s.
 Verkita de %s, %s, %s,
%s, %s, %s, %s
kaj %s.
 Verkita de %s, %s, %s,
%s, %s, %s kaj %s.
 Verkita de %s, %s, %s,
%s, %s kaj %s.
 Verkita de %s, %s, %s,
%s kaj %s.
 Verkita de %s, %s, %s
kaj %s.
 Verkita de %s, %s kaj %s.
 Verkita de %s.
 Verkita de Majk HERTEL (Mike Haertel) kaj aliuloj; vidu
<https://git.sv.gnu.org/cgit/grep.git/tree/AUTHORS>. « ambigua argumento %s por %s sintakso de signoklaso estas ekzemple [[:spaco:]], ne [:spaco:] pluraj esprimtipoj indikatas transpasiĝis linilongecan limon de PCRE mankas sufiĉa memoro por la PCRE-JIT-stako malsukcesis reveni al komenca labordosierujo malsukcesis agordi tekstan/duuman moduson de dosierpriaĵo enigo tro longas por nombri **interna eraro** (devus neniam okazi) nevalida argumento %s por %s nevalida signoklaso nevalida enhavo de \{\} nevalida kuntekstlongeca argumento nevalida esprimtipo %s nevalida maksimuma nombro mankas sufiĉa memoro neniu sintakso indikatas programeraro regulesprimo tro grandas staktroo opcio «-P» akceptas nur unuopan ŝablonon ne eblas registri aktualan labordosierujon senpara ( senpara ) senpara [ nefinita \-eskapo nekonata ago por duumaj dosieroj nekonata ago por aparatoj skrib-eraro 