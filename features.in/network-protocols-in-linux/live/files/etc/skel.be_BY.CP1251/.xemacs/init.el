; Personal settings for XEmacs.

; Personal X resources for XEmacs can be set in ~/.Xdefaults.
; Look also at the global configuration in /etc/xemacs/.

; XEmacs has a customization menu, changes done there are written 
; into ~/.xemacs/custom.el file.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Minimal settings for users of XEmacs who work in
; Belarusian (CP1251) environment.
; 
; ALT Linux Team, 2004.

(MULElaunch
 (set-language-environment "Belarusian")
 (set-charset-registry 'ascii "microsoft-cp1251")
 (set-charset-registry 'latin-iso8859-1 "microsoft-cp1251")
 (set-charset-registry 'cyrillic-iso8859-5 "microsoft-cp1251")
 (set-charset-ccl-program 'cyrillic-iso8859-5 'ccl-encode-windows1251-font)
 (put-charset-property 'cyrillic-iso8859-5 'preferred-coding-system 'windows-1251)
 )

; End of the language environment settings.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
