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
            B   5  3   x  &   �  /   �       -        4  *   =  (   h  L   �  M   �  .   ,  =   [     �     �     �     �  ;   �     3     M     g  #     :   �  $   �  &     ,   *     W     p     �     �     �     �            !     8     T     m  !   �  '   �  '   �  8   �      6      W     x     |  A     9   �     �  !        7     C  &   O  `   v     �  #   �          4  ,   O  >   |     �     �     �  �  �     �  1  �  ,   �  2     I   5  A     !   �  !   �  &     F   ,  %   s  '   �  (   �  2   �  /         M  6   n     �     �     �     �     
        P   6     �  ;   �     �  G   �  
   ?     J  5   ]  [   �  u   �  9   e  \   �     �  _   	     i  <   v  <   �  p   �  p   a  I   �  c      n   �   4   �   2   $!     W!  @   u!  6   �!  7   �!  <   %"  Z   b"  O   �"  9   #  D   G#  J   �#  .   �#  =   $  G   D$  V   �$  5   �$  .   %  =   H%  0   �%  C   �%  .   �%  A   *&  6   l&  ?   �&  Z   �&  �   >'  0   �'  C   �'     B(  
   K(  k   V(  n   �(  +   1)  B   ])     �)     �)  2   �)  �   *  /   �*  A   �*  7   1+  .   i+  I   �+  p   �+  6   S,     �,  3   �,         S      ?   *   N         I      F   \              X   M   !   -          5       .   W             )       $   8          :      '           T   1       "   P   =   A   ;   R          #   E      6       3   (   J   G      O   9   @             0                  U   &   /           L   +              ,   	   D                    ]   Y          ^      %                      H   V   <   [          2      7      C          >       B   Z   Q   K   4       
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
Last-Translator: Yuri Chornoivan <yurchor@ukr.net>
Language-Team: Ukrainian <trans-uk@lists.fedoraproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: uk
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
 
 
Зауваження: у виведених даних показано лише служби SysV, там немає типових
      служб systemd. Дані налаштування SysV могли бути перезаписані типовими
      налаштуваннями systemd.
 
помилка читання вибору
                     [--initscript <служба>]
                     [--slave <посилання> <ім'я> <шлях>]*
                 --altdir <directory> --admindir <каталог>
          %s --add <служба>
          %s --del <служба>
          %s --override <служба>
          %s [--level <рівні>] [--type <тип] <служба> %s
        alternatives --auto <ім'я>
        alternatives --config <ім'я>
        alternatives --display <ім'я>
        alternatives --remove <ім'я> <шлях>
        alternatives --set <ім'я> <шлях>
    Вибір    Команда
  посилання наразі вказує на %s
  slave %s: %s
 %s - пріоритет %d
 %s - стан "авто".
 %s - стан "вручну".
 %s вже існує
 %s порожній!
 %s не було налаштовано як альтернативу для %s
 %s версія %s
 %s версія %s - Copyright (C) 1997-2000 Red Hat, Inc.
 ( буде видалено %s
 аргументом --type має бути «sysv» або «xinetd»
 Назад Скасувати Поточна "найкраща" версія - %s.
 Enter - зберегти поточний вибір[+], або вкажіть номер:  Не вдалося переспрямувати запит щодо обслуговування до systemctl: %m
 Немає служб, які керуються ntsysv!
 Зауваження: переспрямування запиту до «systemctl %s %s».
 Гаразд Натисніть <F1> для докладнішої інформації про службу. Служби Є %d програм, які забезпечують '%s'.
 Є %d програм, які забезпечують '%s'.
 Може вільно розповсюджуватись на умовах ліцензії GNU Public License.
 Може вільно розповсюджуватись на умовах ліцензії GNU Public License.
 Які служби треба запускати автоматично? У вас недостатньо повноважень для виконання цієї дії.
 Для виконання %s необхідні повноваження адміністратора (root).
 каталог admindir %s неправильний
 каталог altdir %s неправильний
 alternatives версія %s
 alternatives версія %s - Copyright (C) 2001 Red Hat, Inc.
 неправильний аргумент в --levels
 неправильний режим у рядку 1 %s
 неправильне основне посилання %s
 не вдається визначити поточний рівень виконання
 загальні параметри: --verbose --test --help --usage --version
 помилка читання з каталогу %s: %s
 помилка читання даних для служби %s: %s
 помилка читання інформації у службі %s: %s
 не вдається створити %s: %s
 не вдається визначити шаблон %s: %s
 не вдається створити посилання %s -> %s: %s
 не вдається створити символічне посилання %s: %s
 не вдається відкрити %s/init.d: %s
 не вдається відкрити %s: %s
 не вдається відкрити каталог %s: %s
 не вдається прочитати %s: %s
 не вдається прочитати посилання %s: %s
 не вдається видалити %s: %s
 не вдається видалити посилання %s: %s
 не вдається замінити %s на %s: %s
 посилання %s неправильне для %s (%s %s)
 посилання змінено -- встановлюється ручний режим
 посилання вказує на безальтернативний елемент - встановлюється ручний режим
 відсутній шлях до slave %s у %s
 %s повинен бути числовим пріоритетом
 вимк ввімк можна вказувати лише один аргумент з --list, --add, --del або --override
 можна вказувати лише один рівень виконання для запиту chkconfig
 неочікуваний шлях %s у %s
 у %s очікується шлях до альтернативи
 читається %s
 запускається %s
 служба %s не підтримує chkconfig
 служба %s підтримує chkconfig, але не використовується на жодному рівні виконання (запустіть 'chkconfig --add %s')
 у %s очікувався шлях до slave
 основним посиланням на %s має бути %s
 неочікуваний кінець файла у %s
 неочікуваний рядок у %s: %s
 використання:   %s [--list] [--type <тип>] [служба]
 використання: alternatives --install <посилання> <ім'я> <шлях> <пріоритет>
 буде створено посилання %s -> %s
 буде видалено %s
 служби, що базуються на xinetd:
 