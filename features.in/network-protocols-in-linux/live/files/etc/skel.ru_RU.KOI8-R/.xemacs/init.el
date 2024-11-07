; Personal settings for XEmacs.

; Personal X resources for XEmacs can be set in ~/.Xdefaults.
; Look also at the global configuration in /etc/xemacs/.

; XEmacs has a customization menu, changes done there are written 
; into ~/.xemacs/custom.el file.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Minimal settings for users of XEmacs who work in
; Russian (KOI8-R) environment.
; 
; ALT Linux Team, 2004.

(MULElaunch 
 (set-language-environment "Cyrillic-KOI8")
 (set-charset-registry 'ascii "koi8-r")
 (set-charset-registry 'latin-iso8859-1 "koi8-r")
 (set-charset-registry 'cyrillic-iso8859-5 "koi8-r")
 (set-charset-ccl-program 'cyrillic-iso8859-5 'ccl-encode-koi8-r-font)
 (put-charset-property 'cyrillic-iso8859-5 'preferred-coding-system 'koi8-r)
 )

; End of the language environment settings.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
