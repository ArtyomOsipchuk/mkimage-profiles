; Personal settings for Emacs.

; Personal X resources for Emacs can be set in ~/.Xdefaults.
; Look also at the global configuration in /etc/emacs/.

; Emacs has a customization menu, changes done there are written 
; into this file.
; For example, to turn off the autostart of Flyspell, customize
; Data->"Text Mode Hook" item.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Minimal settings for users of Emacs who work in 
; Russian (CP1251) environment.
; 
; ALT Linux Team, February 2002.

(set-language-environment "Cyrillic-CP1251")

; The following lines make the corresponding 
; parameters independent of the current language-environment:
; if you change language-environment, they won't be changed;
; but if you comment out some of them, they will follow the
; language-environment parameter:
(set-terminal-coding-system 'cp1251)
(set-keyboard-coding-system 'cp1251)
; This could help for transferring data from bad old apps
;(set-selection-coding-system 'cp1251)

; End of the language environment settings.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
