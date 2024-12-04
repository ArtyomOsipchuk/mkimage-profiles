; Personal settings for Emacs.

; Personal X resources for Emacs can be set in ~/.Xdefaults.
; Look also at the global configuration in /etc/emacs/.

; Emacs has a customization menu, changes done there are written 
; into this file.
; For example, to turn off the autostart of Flyspell, customize
; Data->"Text Mode Hook" item.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Minimal settings for users of Emacs who work in
; Ukrainian (KOI8-U) environment.
; 
; ALT Linux Team, February 2002.

(set-language-environment "Cyrillic-KOI8-U")

; The following lines make the corresponding 
; parameters independent of the current language-environment:
; if you change language-environment, they won't be changed;
; but if you comment out some of them, they will follow the
; language-environment parameter:
(set-terminal-coding-system 'koi8-u)
(set-keyboard-coding-system 'koi8-u)
; This could help for transferring data from bad old apps
;(set-selection-coding-system 'koi8-u)

; End of the language environment settings.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;