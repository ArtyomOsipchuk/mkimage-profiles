��    �      l  �   �
      H  �  I  h   �  �   Z  i  K  b  �  �        �     �  %   �  5   �     0     >     F     U  "   ^     �     �     �     �     �      �          /  	   H     R  6   g  '   �  '   �  "   �  4     *   F  .   q     �     �  
   �     �     �     �     �          #     ;     P     e     y     �     �     �     �     �     �          (     ;     C     c     j     w     �     �     �     �     �  %     &   C  #   j  #   �  #   �  !   �  (   �  <   !  %   ^     �      �     �  #   �          &  #   >  %   b  ?   �  	   �     �  %   �       
        '     7     I     a     r     �     �     �     �     �     �     �     �  4         K      ]      l      �      �      �      �      �      �      !     !     !!     *!     ;!  '   @!     h!  &   !  	   �!     �!     �!     �!     �!     �!     �!     �!     �!  L   "  ;   e"     �"  "   �"     �"     �"     �"     #     #     #  	   &#     0#  *   9#  $   d#  +   �#  #   �#  7   �#  %   $  "   7$  4   Z$  (   �$  (   �$     �$     �$     %     %     )%     :%     K%     P%     a%     y%  
   �%     �%  &   �%  '   �%  ,   �%     &     &     '&     +&     9&      U&  �  v&  7  +(  r   c+  �   �+  �  �,  �  c.  �    1     �1  "   �1  #   �1  5   2     >2     L2     R2     c2  -   j2     �2  !   �2  !   �2     �2     
3  +   *3  &   V3     }3     �3     �3  2   �3  3   �3  3   +4  ,   _4  A   �4  *   �4  .   �4     (5  	   95     C5     O5     ]5     p5     �5  1   �5     �5     �5     6     6     86     S6     o6     �6     �6     �6     �6  +   �6     $7     A7  %   H7     n7     u7  )   �7     �7      �7  &   �7  '   8  0   <8  5   m8  6   �8  6   �8  2   9  5   D9  0   z9  ?   �9  K   �9  @   7:  1   x:  2   �:  1   �:  /   ;  .   ?;  '   n;  4   �;  =   �;  W   	<     a<     q<  ,   �<     �<  
   �<     �<     �<     =     *=     A=     \=     q=     �=     �=     �=     �=     �=      
>  B   +>     n>     �>     �>  &   �>     �>     �>     ?     ,?     J?  
   e?     p?     �?     �?     �?  /   �?     �?  5   �?     *@     :@     G@     W@     Z@     v@     �@     �@  &   �@  N   �@  >   &A     eA  (   �A     �A     �A     �A     �A     �A     �A     �A     B  #   B  "   3B  2   VB     �B  6   �B  $   �B  )    C  B   *C     mC     �C     �C     �C     �C     �C     �C     D     D     D     8D     TD  
   \D     gD  8   kD  9   �D  >   �D     E  &   #E     JE     VE  -   dE  2   �E     �   t   k   �           L   Z   �       i                    �   �       �       D      y   4   �   S               5          $   #   l          j   h                 _   T   �   �   -   M   8   &   B   6       P   d   �   C   �   G   �   Y   x   �   �   U       �   �                          �      ]   �   %   !   �      m   X   �                 n   \       7       >       �       "       .   |       s   �   H   �   
   �   N      �   �   �       O   }         �       �   �      2       3      /   �   A       v   1       �       a      Q       *               F          )   q   I   w       z   (   c   �       =       �   e   J   K   ~      {          ^      '   ;   b       �       o   �   �   f   `             r   g   �       :   u   9   E               W   @      �      V           <   R      �   [   0   �   �   +   �   	                  p       ,   ?            -h --help            Show this help
    -V --version         Show version
    -D --browse-domains  Browse for browsing domains instead of services
    -a --all             Show all services, regardless of the type
    -d --domain=DOMAIN   The domain to browse in
    -v --verbose         Enable verbose mode
    -t --terminate       Terminate after dumping a more or less complete list
    -c --cache           Terminate after dumping all entries from the cache
    -l --ignore-local    Ignore local services
    -r --resolve         Resolve services found
    -f --no-fail         Don't fail if the daemon is not available
    -p --parsable        Output in parsable format
     -k --no-db-lookup    Don't lookup service types
    -b --dump-db         Dump service type database
 %s [options]

    -h --help            Show this help
    -s --ssh             Browse SSH servers
    -v --vnc             Browse VNC servers
    -S --shell           Browse both SSH and VNC
    -d --domain=DOMAIN   The domain to browse in
 %s [options] %s <host name ...>
%s [options] %s <address ... >

    -h --help            Show this help
    -V --version         Show version
    -n --name            Resolve host name
    -a --address         Resolve address
    -v --verbose         Enable verbose mode
    -6                   Lookup IPv6 address
    -4                   Lookup IPv4 address
 %s [options] %s <name> <type> <port> [<txt ...>]
%s [options] %s <host-name> <address>

    -h --help            Show this help
    -V --version         Show version
    -s --service         Publish service
    -a --address         Publish address
    -v --verbose         Enable verbose mode
    -d --domain=DOMAIN   Domain to publish service in
    -H --host=DOMAIN     Host where service resides
       --subtype=SUBTYPE An additional subtype to register this service with
    -R --no-reverse      Do not publish reverse entry with address
    -f --no-fail         Don't fail if the daemon is not available
 %s [options] <new host name>

    -h --help            Show this help
    -V --version         Show version
    -v --verbose         Enable verbose mode
 : All for now
 : Cache exhausted
 <i>No service currently selected.</i> A NULL terminated list of service types to browse for Access denied Address Address family Address: An unexpected D-Bus error occurred Avahi Discovery Avahi SSH Server Browser Avahi VNC Server Browser Avahi Zeroconf Browser Avahi client failure: %s Avahi domain browser failure: %s Avahi resolver failure: %s Bad number of arguments
 Bad state Browse Service Types Browse for Zeroconf services available on your network Browse for Zeroconf-enabled SSH Servers Browse for Zeroconf-enabled VNC Servers Browse service type list is empty! Browsing for service type %s in domain %s failed: %s Browsing for services in domain <b>%s</b>: Browsing for services on <b>local network</b>: Browsing... C_onnect Canceled.
 Change domain Choose SSH server Choose Shell Server Choose VNC server Client failure, exiting: %s
 Connecting to '%s' ...
 DNS failure: FORMERR DNS failure: NOTAUTH DNS failure: NOTIMP DNS failure: NOTZONE DNS failure: NXDOMAIN DNS failure: NXRRSET DNS failure: REFUSED DNS failure: SERVFAIL DNS failure: YXDOMAIN DNS failure: YXRRSET Daemon connection failed Daemon not running Desktop Disconnected, reconnecting ...
 Domain Domain Name: E Ifce Prot %-*s %-20s Domain
 E Ifce Prot Domain
 Established under name '%s'
 Failed to add address: %s
 Failed to add service: %s
 Failed to add subtype '%s': %s
 Failed to connect to Avahi server: %s Failed to create address resolver: %s
 Failed to create browser for %s: %s Failed to create client object: %s
 Failed to create domain browser: %s Failed to create entry group: %s
 Failed to create host name resolver: %s
 Failed to create resolver for %s of type %s in domain %s: %s Failed to create simple poll object.
 Failed to parse address '%s'
 Failed to parse port number: %s
 Failed to query host name: %s
 Failed to query version string: %s
 Failed to read Avahi domain: %s Failed to register: %s
 Failed to resolve address '%s': %s
 Failed to resolve host name '%s': %s
 Failed to resolve service '%s' of type '%s' in domain '%s': %s
 Host Name Host name conflict
 Host name successfully changed to %s
 Initializing... Interface: Invalid DNS TTL Invalid DNS class Invalid DNS return code Invalid DNS type Invalid Error Code Invalid RDATA Invalid address Invalid argument Invalid configuration Invalid domain name Invalid flags Invalid host name Invalid interface index Invalid number of arguments, expecting exactly one.
 Invalid operation Invalid packet Invalid port number Invalid protocol specification Invalid record Invalid record key Invalid service name Invalid service subtype Invalid service type Is empty Local name collision Location Memory exhausted Name Name collision, picking new name '%s'.
 No command specified.
 No suitable network protocol available Not found Not permitted Not supported OK OS Error Operation failed Port Resolve Service Resolve Service Host Name Resolve the host name of the selected service automatically before returning Resolve the selected service automatically before returning Resource record key is pattern Server version: %s; Host name: %s
 Service Name Service Name: Service Type Service Type: TXT TXT Data TXT Data: Terminal The IP port number of the resolved service The TXT data of the resolved service The address family for host name resolution The address of the resolved service The domain to browse in, or NULL for the default domain The host name of the resolved service The object passed in was not valid The requested operation is invalid because redundant The service name of the selected service The service type of the selected service Timeout reached Too few arguments
 Too many arguments
 Too many clients Too many entries Too many objects Type Version mismatch Waiting for daemon ...
 _Cancel _Domain... _OK avahi_domain_browser_new() failed: %s
 avahi_service_browser_new() failed: %s
 avahi_service_type_browser_new() failed: %s
 empty execlp() failed: %s
 n/a network-wired service_browser failed: %s
 service_type_browser failed: %s
 Project-Id-Version: avahi
Report-Msgid-Bugs-To: https://github.com/lathiat/avahi/issues
PO-Revision-Date: 2019-02-26 18:00+0100
Last-Translator: Piotr Drąg <piotrdrag@gmail.com>
Language-Team: Polish <community-poland@mozilla.org>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
     -h --help            Wyświetla tę pomoc
    -V --version         Wyświetla wersję
    -D --browse-domains  Przegląda domeny zamiast usług
    -a --all             Wyświetla wszystkie usługi,
                         niezależnie od ich typu
    -d --domain=DOMENA   Domena do przeglądania
    -v --verbose         Wyświetla więcej informacji
    -t --terminate       Wyłącza po zrzuceniu bardziej
                         lub mniej pełnej listy
    -c --cache           Wyłącza po zrzuceniu wszystkich wpisów
                         z pamięci podręcznej
    -l --ignore-local    Ignoruje lokalne usługi
    -r --resolve         Rozwiązuje odnalezione usługi
    -f --no-fail         Nie wyłącza, jeśli usługa nie jest dostępna
    -p --parsable        Wyjście w formacie do przetwarzania
     -k --no-db-lookup    Nie przeszukuje typów usług
    -b --dump-db         Zrzuca bazę danych typów usług
 %s [opcje]

    -h --help            Wyświetla tę pomoc
    -s --ssh             Przegląda serwery SSH
    -v --vnc             Przegląda serwery VNC
    -S --shell           Przegląda SSH i VNC
    -d --domain=DOMENA   Domena do przeglądania
 %s [opcje] %s <nazwa komputera…>
%s [opcje] %s <adres…>

    -h --help            Wyświetla tę pomoc
    -V --version         Wyświetla wersję
    -n --name            Rozwiązuje nazwę komputera
    -a --address         Rozwiązuje adres
    -v --verbose         Wyświetla więcej informacji
    -6                   Przeszukuje adresy IPv6
    -4                   Przeszukuje adresy IPv4
 %s [opcje] %s <nazwa> <typ> <port> [<tekst…>]
%s [opcje] %s <nazwa-komputera> <adres>

    -h --help            Wyświetla tę pomoc
    -V --version         Wyświetla wersję
    -s --service         Publikuję usługę
    -a --address         Publikuje adres
    -v --verbose         Wyświetla więcej informacji
    -d --domain=DOMENA   Domena, w której opublikować usługę
    -H --host=DOMENA     Komputer, na jakim znajduje się usługa
       --subtype=PODTYP  Dodatkowy podtyp do zarejestrowania tej usługi
    -R --no-reverse      Nie publikuje odwróconego wpisu z adresem
    -f --no-fail         Nie wyłącza, jeśli usługa nie jest dostępna
 %s [opcje] <nowa nazwa komputera>

    -h --help            Wyświetla tę pomoc
    -V --version         Wyświetla wersję
    -v --verbose         Wyświetla więcej informacji
 : Wszystko
 : Wyczerpano pamięć podręczną
 <i>Nie wybrano żadnej usługi.</i> Lista typów usług do przeglądania zakończona NULL Brak dostępu Adres Rodzina adresów Adres: Wystąpił nieoczekiwany błąd usługi D-Bus Wykrywanie Avahi Przeglądarka serwerów SSH Avahi Przeglądarka serwerów VNC Avahi Przeglądarka Zeroconf Avahi Niepowodzenie klienta Avahi: %s Niepowodzenie przeglądarki domen Avahi: %s Niepowodzenie rozwiązywania Avahi: %s Błędna liczba parametrów
 Błędny stan Przeglądanie typów usług Przeglądanie usług Zeroconf dostępnych w sieci Przeglądanie serwerów SSH z włączonym Zeroconf Przeglądanie serwerów VNC z włączonym Zeroconf Przeglądana lista typów usług jest pusta. Przeglądanie typu usług %s w domenie %s się nie powiodło: %s Przeglądanie usług w domenie <b>%s</b>: Przeglądanie usług w <b>lokalnej sieci</b>: Przeglądanie… _Połącz Anulowano.
 Zmiana domeny Wybór serwera SSH Wybór serwera powłoki Wybór serwera VNC Niepowodzenie klienta, kończenie działania: %s
 Łączenie z „%s”…
 Niepowodzenie DNS: FORMERR Niepowodzenie DNS: NOTAUTH Niepowodzenie DNS: NOTIMP Niepowodzenie DNS: NOTZONE Niepowodzenie DNS: NXDOMAIN Niepowodzenie DNS: NXRRSET Niepowodzenie DNS: REFUSED Niepowodzenie DNS: SERVFAIL Niepowodzenie DNS: YXDOMAIN Niepowodzenie DNS: YXRRSET Połączenie z usługą się nie powiodło Usługa nie jest uruchomiona Pulpit Rozłączono, łączenie ponownie…
 Domena Nazwa domeny: E Interfejs Protokół %-*s %-20s Domena
 E Interfejs Protokół Domena
 Ustanowiono pod nazwą „%s”
 Dodanie adresu się nie powiodło: %s
 Dodanie usługi się nie powiodło: %s
 Dodanie podtypu „%s” się nie powiodło: %s
 Połączenie z serwerem Avahi się nie powiodło: %s Utworzenie rozwiązania adresu się nie powiodło: %s
 Utworzenie przeglądarki dla %s się nie powiodło: %s Utworzenie obiektu klienta się nie powiodło: %s
 Utworzenie przeglądarki domen się nie powiodło: %s Utworzenie grupy wpisów się nie powiodło: %s
 Utworzenie rozwiązania nazwy komputera się nie powiodło: %s
 Utworzenie rozwiązania dla %s typu %s w domenie %s się nie powiodło: %s Utworzenie prostego obiektu typu „poll” się nie powiodło.
 Przetworzenie adresu „%s” się nie powiodło
 Przetworzenie numeru portu się nie powiodło: %s
 Odpytanie nazwy komputera się nie powiodło: %s
 Odpytanie ciągu wersji się nie powiodło: %s
 Odczytanie domeny Avahi się nie powiodło: %s Zarejestrowanie się nie powiodło: %s
 Rozwiązanie adresu „%s” się nie powiodło: %s
 Rozwiązanie nazwy komputera „%s” się nie powiodło: %s
 Rozwiązanie usługi „%s” typu „%s” w domenie „%s” się nie powiodło: %s
 Nazwa komputera Konflikt nazw komputerów
 Pomyślnie zmieniono nazwę komputera na %s
 Inicjowanie… Interfejs: Nieprawidłowe TTL serwera DNS Nieprawidłowa klasa DNS Nieprawidłowy kod zwrotny DNS Nieprawidłowy typ DNS Nieprawidłowy kod błędu Nieprawidłowe RDATA Nieprawidłowy adres Nieprawidłowy parametr Nieprawidłowa konfiguracja Nieprawidłowa nazwa domeny Nieprawidłowe flagi Nieprawidłowa nazwa komputera Nieprawidłowy indeks interfejsu Nieprawidłowa liczba parametrów, oczekiwano dokładnie jednego.
 Nieprawidłowe działanie Nieprawidłowy pakiet Nieprawidłowy numer portu Nieprawidłowa specyfikacja protokołu Nieprawidłowy wpis Nieprawidłowy klucz wpisu Nieprawidłowa nazwa usługi Nieprawidłowy podtyp usługi Nieprawidłowy typ usługi Jest puste Kolizja nazwy lokalnej Położenie Wyczerpano pamięć Nazwa Kolizja nazw, wybieranie nowej nazwy „%s”.
 Nie podano polecenia.
 Brak dostępnych odpowiednich protokołów sieciowych Nie odnaleziono Niedozwolone Nieobsługiwane OK Błąd systemu operacyjnego Działanie się nie powiodło Port Rozwiązywanie usługi Rozwiązywanie nazwy komputera usługi Rozwiązywanie nazwy komputera wybranej usługi automatycznie przed zwracaniem Rozwiązywanie wybranej usługi automatycznie przed zwracaniem Klucz wpisu zasobu jest wzorem Wersja serwera: %s; nazwa komputera: %s
 Nazwa usługi Nazwa usługi: Typ usługi Typ usługi: Tekst Dane tekstowe Dane tekstowe: Terminal Numer portu IP rozwiązanej usługi Dane tekstowe rozwiązanej usługi Rodzina adresów do rozwiązywania nazwy komputera Adres rozwiązanej usługi Domena do przeglądania lub NULL dla domyślnej domeny Nazwa komputera rozwiązanej usługi Przepuszczony obiekt nie był prawidłowy Żądane działanie jest nieprawidłowe, ponieważ jest nadmiarowe Nazwa wybranej usługi Typ wybranej usługi Przekroczono czas oczekiwania Za mało parametrów
 Za dużo parametrów
 Za dużo klientów Za dużo wpisów Za dużo obiektów Typ Wersje się nie zgadzają Oczekiwanie na usługę…
 _Anuluj _Domena… _OK „avahi_domain_browser_new()” się nie powiodło: %s
 „avahi_service_browser_new()” się nie powiodło: %s
 „avahi_service_type_browser_new()” się nie powiodło: %s
 puste „execlp()” się nie powiodło: %s
 Nie dotyczy network-wired „service_browser” się nie powiodło: %s
 „service_type_browser” się nie powiodło: %s
 