" Filename:    spec.vim
" Purpose:     Vim syntax file
" Language:    SPEC: Build/install scripts for Linux RPM packages
" Maintainer:  Gleb Fotengauer-Malinovskiy <glebfm@altlinux.org>
" Former Maintainer:  Alexey I. Froloff  <raorn@altlinux.org>
" Last Change: Wed Jan 19 12:00 UTC 2022

" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if !exists("b:spec_textarea_width")
  if exists("g:spec_textarea_width")
    let b:spec_textarea_width = g:spec_textarea_width + 0
  else
    let b:spec_textarea_width = 80
  endif
else
  let b:spec_textarea_width = b:spec_textarea_width + 0
endif

syn sync minlines=1000

" Import syntax/sh
hi def link shOption specOpts
syn include @Shell syntax/sh.vim
syn cluster shCommandSubList add=@specMacros,@specDirectives
" this is SO ugly
syn region  shSingleQuote matchgroup=shOperator start=+'+ end=+'+ contains=shStringSpecial,@Spell,@specMacros,@specDirectives
syn cluster shDblQuoteList add=@specMacros,@specDirectives
syn cluster shEchoList add=@specMacros,@specDirectives
syn cluster shHereList add=@specMacros,@specDirectives
syn cluster shTestList add=@specMacros,@specDirectives
syn cluster shExprList1 add=@specMacros,@specDirectives
syn cluster shExprList2 add=@specMacros,@specDirectives
syn cluster shSubShList add=@specMacros,@specDirectives
"syn cluster shList add=@specMacros,@specDirectives

syn iskeyword @,48-57,_

" Common stuff
syn match specError "\S.*" contained
syn match specNoSpaceError "\S.*" contained
syn match specCommentError '^\s*#.*$' contained contains=@Spell,@specText,@specMacros
syn match specMacroIdentifier "%{\h\w\+"lc=2 contained
syn match specMacroIdentifier "%\h\w\+"lc=1 contained
syn match specMacroNameError "\<__\w\+" contained
syn match specMacroError "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%\h\w\+" contained
syn region specMacroError start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%{" end="}" contained
syn region specMacroError start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%(" end=")" contained
syn match specTextAreaError "\%(\t\|\s\+$\)" contained
if b:spec_textarea_width > 0
  exe 'syn match specTextAreaError "\%>' . b:spec_textarea_width . 'v.*" contained'
endif

syn cluster specMacroNames add=specMacroIdentifier,specMacroNameError

syn match specComment '\_^\s*#.*$' contained contains=@Spell,@specText,specMacroError
syn match specPercent "%" contained
syn match specSpecialChar '[][()!$\\|>^;:{}&]' contained
syn match specDashDash '\s\zs--\ze\s' contained
syn match specDecNumber "\d\+" contained
syn match specOctNumber "\o\+" contained
syn match specHexNumber "\x\+" contained
syn match specWord "\S\+" contained transparent contains=@specMacros

syn keyword specTodo FIXME TODO XXX NOTE contained
syn match specURL "\%(ftp\|https\=\)://\S*" contained contains=@specMacros
syn match specEmail '<[a-zA-Z0-9._-]*@.\{-}>' contained
syn match specCVE "\<\%(CVE-\|CAN-\)\d\{4}-\d\{4,}\>" contained
syn match specBDU "\<\%(BDU:\)\d\{4}-\d\{5}\>" contained
syn match specMFSA "\<MFSA-\d\{4}-\d\{2}\>" contained
syn match specOVE "\<OVE-\d\{8}-\d\{4}\>" contained
syn match specBugID "\w*#\d\+" contained

syn cluster specText add=specTodo,specURL,specEmail,specCVE,specBDU,specMFSA,specOVE,specBugID

"syn region specString start="'" end="'" skip="\\'"

syn region specTagColon matchgroup=specColon start=":" end="$" oneline contained contains=specURL,specEmail,@specMacros
syn region specTagOpColon matchgroup=specColon start=":" end="$" oneline contained contains=specOp,@specMacros
syn region specTagSpellColon matchgroup=specColon start=":" end="$" oneline contained contains=@Spell,specURL,specEmail,@specMacros

syn match specOp "\%([<>]=\=\|=\)" contained skipwhite nextgroup=specVersionRelease contains=@specMacros
syn match specVersionRelease "[0-9a-zA-Z_][0-9a-zA-Z_.:-]*" contained contains=@specMacros

syn case ignore
syn region specTagLang     matchgroup=specSpecialChar start="(" end=")" oneline contained contains=specComma,specLangBits,specError     nextgroup=specTagSpellColon,specError
syn region specTagReq      matchgroup=specSpecialChar start="(" end=")" oneline contained contains=specComma,specReqBits,specError      nextgroup=specTagColon,specError
syn region specTagBuildReq matchgroup=specSpecialChar start="(" end=")" oneline contained contains=specComma,specBuildReqBits,specError nextgroup=specTagColon,specError
syn match specLangBits "\<\l\l\%(_\u\u\)\=\%(\.[A-Za-z0-9\.\-_]\+\)\=\>" contained skipwhite

syn keyword specReqBits interp prereq preun pre postun post rpmlib verify contained skipwhite
syn match specComma "," contained skipwhite

syn keyword specBuildReqBits pre prep build install clean contained skipwhite

syn match specPreambleTag "^\%(name\|distribution\|disturl\|buildhost\|vendor\|packager\|url\|excludearch\|exclusivearch\|excludeos\|exclusiveos\|buildarchitectures\|autoreqprov\|autoreq\|autoprov\|docdir\)" contained nextgroup=specTagColon,specError
syn match specPreambleTag "^buildconflicts" contained nextgroup=specTagOpColon,specError
syn match specPackageTag "^\%(buildarch\|epoch\|icon\|license\|nopatch\|nosource\|prefix\|prefixes\|release\|serial\|vcs\|version\)" contained nextgroup=specTagColon,specError
syn match specPackageTag "^\%(provides\|obsoletes\|conflicts\)" contained nextgroup=specTagOpColon,specError

syn match specPackageTag "^\%(summary\|group\)\>" contained nextgroup=specTagLang,specTagSpellColon,specError
syn match specPackageTag "^\%(requires\|prereq\)\>" contained nextgroup=specTagReq,specTagOpColon,specError

syn match specPreambleTag "^\%(buildprereq\|buildrequires\)" contained nextgroup=specTagBuildReq,specTagOpColon,specError
syn match specPreambleTag "^\%(source\|patch\)\d*\>" contained nextgroup=specTagColon,specError

" Macros
syn case match
syn keyword specGlobalMacro name version release epoch serial copyright license distribution disturl buildhost vendor packager url icon prefix buildroot docdir summary group contained
syn match specGlobalMacro "\<\%(SOURCE\|PATCH\)\d\+\>" contained
syn match specGlobalMacro "\<\d\>" contained

syn match specPercentMacro "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%\%(\h\w*\|\d\)\>" contained contains=@specMacroNames,specPercent
syn region specPercentMacro matchgroup=specPercent start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%{" end="}" transparent keepend contained contains=specPercentMacro,specShellMacro,specConditionalMacro,@specMacroNames,@specDirectives
syn region specShellMacro matchgroup=specPercent start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%(" end=")" transparent keepend contained contains=@specMacros,@specDirectives,@Shell

syn region specConditionalMacro matchgroup=specSpecialChar start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!%{!\=?"lc=2 matchgroup=specColon end=":" contained keepend contains=specGlobalMacro

syn cluster specMacros add=specPercentMacro,specShellMacro,specConditionalMacro

syn keyword specGlobalMacro contained
	\ Kb_menudir Kbmenudir Kmenudir _K4bindir _K4datadir _K4iconsdir _K4includedir
	\ _K4libdir _K4sbindir _K4sysconfdir _Klibdir _Kmenudir _aclocaldir _altdir
	\ _alterator_backend2dir _alterator_backend3dir _alterator_datadir
	\ _alterator_libdir _bK_menudir _bKlibdir _bKmenudir _beep_datadir
	\ _beep_effect_dir _beep_general_dir _beep_input_dir _beep_libdir
	\ _beep_output_dir _beep_visualization_dir _bindir _bitmapfontsdir _builddir
	\ _cachedir _cleanup_topdir _compress_topdir _controldir _datadir _defaultdocdir
	\ _desktopdir _emacs_datadir _emacs_etc_dir _emacs_sitestart_dir _emacslispdir
	\ _erlangdir _erlangdocdir _erlanglibdebugdir _erlanglibdir _erlanglibnativedir
	\ _erlangmandir _erldir _erldocdir _erllibdebugdir _erllibdir _erllibnativedir
	\ _erlmandir _fillupdir _findprov_topdir _findreq_topdir _fixup_topdir
	\ _fontpathdir _fontsdir _gamesbindir _gamesdatadir _gamesdir _ghclibdir
	\ _gtkdocdir _ha_dir _ha_resource_dir _iconsdir _includedir _infodir _initddir
	\ _initdir _initrddir _jabber_component_dir _jabber_server_dir _javadir
	\ _javadocdir _jnidir _jvmcommondatadir _jvmcommonlibdir _jvmcommonsysconfdir
	\ _jvmdatadir _jvmdir _jvmjardir _jvmlibdir _jvmprivdir _jvmsysconfdir
	\ _kdeconfdir _kdedir _kdedocdir _ladspa_datadir _lib _libdir _libexecdir _licensedir
	\ _liconsdir _localstatedir _lockdir _locksubsysdir _logdir _logrotatedir
	\ _man1dir _man2dir _man3dir _man4dir _man5dir _man6dir _man7dir _man8dir
	\ _man9dir _mandir _mavendepmapdir _mavendepmapfragdir _menudir _miconsdir
	\ _monodir _monodocdir _monogacdir _moodldatadir _moodledir _niconsdir
	\ _oldincludedir _omfdir _otffontsdir _otpdir _otplibdebugdir _otplibdir
	\ _otplibnativedir _otpmandir _pam_modules_dir _pixmapsdir _pkgconfigdir _qt3dir
	\ _qt4dir _repackage_dir _rpmdir _rpmlibdir _rpmmacrosdir _runtimedir _sbindir
	\ _sharedstatedir _sklocalstatedir _sourcedir _specdir _spooldir _srcrpmdir
	\ _strip_topdir _sysconfdir _tagsdir _target_libdir _tcldatadir _tcllibdir
	\ _topdir _topsrcdir _ttffontsdir _ttsdir _type1fontsdir _verify_elf_topdir
	\ _wlskindir _x11appconfdir _x11bindir _x11datadir _x11dir _x11drvddir
	\ _x11fontsdir _x11includedir _x11libdir _x11mandir _x11modulesdir
	\ _x11sysconfdir _x11x11dir _x11x11libdir _xdgmimedir _xemacs_archlibdir
	\ _xemacs_confdir _xemacs_datadir _xemacs_docdir _xemacs_etcdir _xemacs_infodir
	\ _xemacs_libdir _xemacs_lispdir _xemacs_package_etc_dir _xemacs_package_lib_dir
	\ _xemacs_package_lisp_dir _xemacs_sitestartdir apache2_addonconfdir
	\ apache2_basedir apache2_bindir apache2_cgibindir apache2_compat_cgibindir
	\ apache2_compat_datadir apache2_compat_errordir apache2_compat_htdocsdir
	\ apache2_compat_iconsdir apache2_compat_iconssmalldir
	\ apache2_compat_manualaddonsdir apache2_compat_manualdir
	\ apache2_compat_vhostdir apache2_compat_webappsdir apache2_confdir
	\ apache2_datadir apache2_errordir apache2_htdocsaddondir apache2_htdocsdir
	\ apache2_iconsdir apache2_iconssmalldir apache2_includedir apache2_infodir
	\ apache2_installbuilddir apache2_libdir apache2_libexecdir
	\ apache2_localstatedir apache2_logdir apache2_logfiledir apache2_mandir
	\ apache2_manualaddonsdir apache2_manualdir apache2_moduledir
	\ apache2_proxycachedir apache2_runtimedir apache2_sbindir apache2_serverdatadir
	\ apache2_spooldir apache2_tmpdir apache2_vhostdir apache2_webappsdir
	\ apache_addonconfdir apache_addons_data_dir apache_basedir apache_cgibindir
	\ apache_confdir apache_datadir apache_htdocsaddondir apache_htdocsdir
	\ apache_iconsdir apache_iconssmalldir apache_logdir apache_modconfdir
	\ apache_moduledir apache_moduleperldir apache_tmpdir apache_vhconfdir
	\ apache_vhostdir apache_webappsdir apachk_addon_dir apachk_favours_dir
	\ bonobo_serversdir buzz_gear_dir byte_compile_dir byte_recompile_dir
	\ byte_recompile_lispdir firefox_arch_extensionsdir firefox_datadir
	\ firefox_noarch_extensionsdir fpc_dir gconf_schemasdir gedit_pluginsdir
	\ gmpc_plugin_datadir gmpc_plugin_libdir gnome_appletsdir gnome_autostartdir
	\ gnome_helpdir gnome_vfsmodulesdir gnomehelpdir gnomevfs_modulesdir gtk_docdir
	\ hs_pkgconfdir java_dir java_docdir kde_docdir kernel_srcdir mozilla_chromedir
	\ mozilla_componentsdir mozilla_defaultsdir mozilla_iconsdir mozilla_ipcdir
	\ mozilla_pluginsdir mozilla_resdir mozilla_searchpluginsdir nautilus_extdir
	\ netsds_bindir netsds_cgidir netsds_datadir netsds_includedir netsds_libdir
	\ netsds_logdir netsds_piddir netsds_sbindir netsds_webbasedir netsds_webdir
	\ patches_dir pear_datadir pear_dir pear_docdir pear_testdir pear_xmldir
	\ perl_vendor_man1dir perl_vendor_man3dir php5_datadir php5_develdir php5_extdir
	\ php5_extsapidir php5_extsrcdir php5_includedir php5_libdir php5_moddir
	\ php5_peardir php5_servicedir php5_sysconfdir php5_vermoddir python_dynlibdir
	\ python_includedir python_libdir python_sitelibdir python_tooldir rpmeval_dir
	\ ruby_archdir ruby_includedir ruby_libdir ruby_ri_sitedir ruby_sitearchdir
	\ ruby_siteincludedir ruby_sitelibdir sawfish_dir sawfish_sitelispdir
	\ sawfish_sitesoundsdir sawfish_sitethemedir seamonkey_chromedir
	\ seamonkey_componentsdir seamonkey_defaultsdir seamonkey_iconsdir
	\ seamonkey_ipcdir seamonkey_pluginsdir seamonkey_resdir
	\ seamonkey_searchpluginsdir set_cleanup_topdir set_compress_topdir
	\ set_findprov_topdir set_findreq_topdir set_fixup_topdir set_strip_topdir
	\ set_tbird_ciddir set_verify_elf_topdir srv_dir sunbird_arch_extensionsdir
	\ sunbird_chromedir sunbird_componentsdir sunbird_datadir sunbird_defaultsdir
	\ sunbird_extensionsdir sunbird_greprefsdir sunbird_iconsdir sunbird_idldir
	\ sunbird_includedir sunbird_ipcdir sunbird_libdir sunbird_noarch_extensionsdir
	\ sunbird_pluginsdir sunbird_resdir sunbird_searchpluginsdir sunbird_updatesdir
	\ tbird_arch_extensionsdir tbird_datadir tbird_idldir tbird_includedir
	\ tbird_noarch_extensionsdir vhosts_dir vim_after_compiler_dir vim_after_dir
	\ vim_after_ftplugin_dir vim_after_indent_dir vim_after_plugin_dir
	\ vim_after_syntax_dir vim_autoload_dir vim_colors_dir vim_compiler_dir vim_dir
	\ vim_doc_dir vim_ftdetect_dir vim_ftplugin_dir vim_indent_dir vim_keymap_dir
	\ vim_lang_dir vim_plugin_dir vim_print_dir vim_runtime_dir vim_spell_dir
	\ vim_spell_source_dir vim_syntax_dir webserver_cgibindir webserver_datadir
	\ webserver_htdocsaddondir webserver_htdocsdir webserver_iconsdir
	\ webserver_iconssmalldir webserver_manualaddonsdir webserver_vhostdir
	\ webserver_webappsdir xmms_datadir xmms_effectdir xmms_generaldir xmms_inputdir
	\ xmms_libdir xmms_outputdir xmms_visualizationdir xss_ad_dir xss_conf_dir
	\ xss_hack_dir xulr_arch_extensionsdir xulr_datadir xulr_devel_bindir
	\ xulr_devel_idldir xulr_devel_includedir xulr_devel_libdir xulr_develdir
	\ xulr_extensionsdir xulr_idldir xulr_includedir xulr_noarch_extensionsdir
	\ xulr_sdk_idldir xulr_sdk_includedir xulr_sdk_libdir xulr_sdkdir
	\
	\ _K4prefix _exec_prefix _prefix apache2_exec_prefix firefox_prefix
	\ mozilla_prefix seamonkey_prefix sunbird_prefix tbird_prefix xulr_prefix
	\
	\ _build _build_alias _build_arch _build_cpu _build_name_fmt _build_os
	\ _build_vendor _host _host_alias _host_cpu _host_os _host_vendor _target
	\ _target_alias _target_cpu _target_libdir _target_libdir_noarch _target_os
	\ _target_platform _target_vendor
	\
	\ arm amd intel ix86
	\
	\ nil
	\
	\ perl_vendor_privlib perl_vendor_archlib perl_vendor_autolib
	\ perl_vendorlib perl_vendorarch
	\
	\ __gcc_version __gcc_version_base __gcc_version_major __gcc_version_minor
	\ __gcc_version_patch __glibc_version __glibc_version_major
	\ __glibc_version_minor __nprocs _python_version

syn cluster specMacroNames add=specGlobalMacro

" Directives...

" %setup
syn region specSetupDirective matchgroup=specDirective start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%setup\>" end="$" contained keepend oneline contains=specSetupOpts,specError

syn match specSetupOpts "-[ab]" contained skipwhite nextgroup=specDecNumber
syn match specSetupOpts "-[cDTqv]\+\_s\@=" contained
syn match specSetupOpts "-n\_s\@=" contained skipwhite nextgroup=specWord

" %patch
syn region specPatchDirective matchgroup=specDirective start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%patch\d*\>" end="$" contained keepend oneline contains=specPatchOpts,specError

syn match specPatchOpts "-p" contained skipwhite nextgroup=specDecNumber
syn match specPatchOpts "-[PREs]\+\_s\@=" contained
syn match specPatchOpts "-[bz]\_s\@=" contained skipwhite nextgroup=specWord

syn cluster specDirectives add=specSetupDirective,specPatchDirective

let s:directives = [
	\ "add_cleanup_skiplist", "add_compress_skiplist",
	\ "add_erlang_req_modules_skiplist", "add_findpackage_path",
	\ "add_findprov_lib_path", "add_findprov_skiplist", "add_findreq_skiplist",
	\ "add_fixup_skiplist", "add_jvm_extension", "add_lisp_loadpath", "add_optflags",
	\ "add_patch_list", "add_perl_lib_path", "add_python_compile_exclude",
	\ "add_python_compile_include", "add_python_lib_path", "add_python_req_skip",
	\ "add_ruby_lib_path", "add_ruby_weakprov_path", "add_serial",
	\ "add_strip_skiplist", "add_tcl_lib_path", "add_tcl_req_skip",
	\ "add_texmf_req_skip", "add_to_maven_depmap", "add_verify_elf_skiplist",
	\ "autoreconf",
	\ "configure", "find_lang", "fpc_build", "fpc_install", "fpc_win32_build",
	\ "fpc_win32_install", "gconf2_install", "make", "make_build", "make_compile",
	\ "make_install", "make_install_std", "make_pam_name", "make_session",
	\ "makeinstall", "makeinstall_std", "otf_fonts_install", "pear_build",
	\ "pear_install", "pecl_install", "perl_vendor_build", "perl_vendor_install",
	\ "php5_make_install", "python_build", "python_install", "rake", "rake_install",
	\ "rdoc", "remove_optflags", "ruby_build", "ruby_build_std", "ruby_config",
	\ "ruby_configure", "ruby_install", "ruby_setup_rb", "ruby_test_unit",
	\ "ruby_vendor", "set_autoconf_version", "set_automake_version",
	\ "set_cleanup_skiplist", "set_compress_skiplist", "set_findpackage_path",
	\ "set_findprov_lib_path", "set_findprov_skiplist", "set_findreq_skiplist",
	\ "set_fixup_skiplist", "set_gcc_version", "set_kernel_arches",
	\ "set_libtool_version", "set_lisp_loadpath", "set_pam_name", "set_patch_list",
	\ "set_strip_skiplist", "set_sunbird_noarch", "set_verify_elf_skiplist",
	\ "tea_makeindex", "tea_makeinstall", "teapatch", "ttf_fonts_install",
	\ "type1_fonts_install", "update_setup_rb", "xemacs_package_install",
	\ "post_service", "preun_service", "post_control", "pre_control"
	\ ]

exec 'syn match specDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%\%(' . join(s:directives, "\\|") . '\)\>" contained'

let s:obsolete = [
	\ "clean_menus", "clean_scrollkeeper", "clean_vimhelp", "clean_wms", "clean_xscreensaver",
	\ "post_ldconfig", "post_ldconfig_lib", "post_ldconfig_sys", "postun_ldconfig",
	\ "register_alternatives", "remove_alternatives", "unregister_alternatives",
	\ "unregister_alternatives_always", "update_alternatives", "update_menus",
	\ "update_scrollkeeper", "update_vimhelp", "update_wms", "update_xscreensaver",
	\ "install_info", "uninstall_info",
	\ "post_reg_alts", "post_register_alternatives", "post_update_alternatives",
	\ "post_update_alts", "preun_remove_alternatives", "preun_remove_alts",
	\ "preun_unreg_alts", "preun_unregister_alternatives"
	\ ]

exec 'syn match specDirectiveError "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%\%(' . join(s:obsolete, "\\|") . '\)\>" contained'
syn cluster specDirectives add=specDirectiveError

" Conditionals
syn match specLogicalOperator "\%([!=]=\|[<>]=\=\)" contained

syn region specIfCond matchgroup=specIf start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%if\%(n\=\%(arch\|os\|def\)\|_with\%(out\)\=\|_enabled\|_disabled\)\=\>" end="$" keepend contains=@specMacros,specLogicalOperator
syn match specElse "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%else\>"
syn match specEndIf "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%endif\>"
syn cluster specConditonals add=specIfCond,specElse,specEndIf
syn cluster specMacros add=@specConditonals

" PreProc
syn region specDefineMacro matchgroup=specDirective start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%\%(global\|\%(un\)\=define\)\>" skip="\\$" end="$" contained keepend contains=@specMacros,@specDirectives
syn region specCondBuild matchgroup=specDirective start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%\%(def\|force\)_\%(with\|without\|enable\|disable\)\>" end="$" oneline contained contains=@specMacros

syn match specDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%set_cleanup_method\>" contained skipwhite nextgroup=specCleanupMethod,specNoSpaceError
syn keyword specCleanupMethod none skip auto contained

syn match specDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%set_compress_method\>" contained skipwhite nextgroup=specCompressMethod,specNoSpaceError
syn keyword specCompressMethod false no none off skip plain gz gzip bz bz2 bzip bzip2 best contained nextgroup=specError

syn match specDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%set_fixup_method\>" contained skipwhite nextgroup=specFixupMethod,specNoSpaceError
syn keyword specFixupMethod no none off false skip config binconfig pkgconfig la libtool contained nextgroup=specError

syn match specDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%set_perl_req_method\>" contained skipwhite nextgroup=specPerlReqMethod,specNoSpaceError
syn keyword specPerlReqMethod strict normal relaxed contained nextgroup=specError

syn match specDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%set_python_compile_method\>" contained skipwhite nextgroup=specPyCMethod,specNoSpaceError
syn keyword specPyCMethod all already both contained nextgroup=specError

syn match specDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%set_python_req_method\>" contained skipwhite nextgroup=specPyReqMethod,specNoSpaceError
syn keyword specPyReqMethod strict slight relaxed contained nextgroup=specError

syn match specDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%set_ruby_req_method\>" contained skipwhite nextgroup=specRubyReqMethod,specNoSpaceError
syn keyword specRubyReqMethod strict relaxed contained nextgroup=specError

syn match specDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%set_strip_method\>" contained skipwhite nextgroup=specStripMethod
syn keyword specStripMethod false no none off skip exec reloc share static contained nextgroup=specStripComma
syn match specStripComma "," contained nextgroup=specStripMethod,specError

syn match specDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%set_tcl_req_method\>" contained skipwhite nextgroup=specTCLReqMethod,specNoSpaceError
syn keyword specTCLReqMethod strict relaxed contained nextgroup=specError

syn match specDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%set_verify_elf_method\>" contained skipwhite nextgroup=specVerifyElfType,specVerifyElfMethod
syn keyword specVerifyElfType arch fhs rpath stack textrel unresolved contained nextgroup=specVerifyElfEq,specVerifyElfComma
syn keyword specVerifyElfMethod normal strict relaxed no none skip contained nextgroup=specVerifyElfComma
syn match specVerifyElfEq "=" contained nextgroup=specVerifyElfMethod,specError
syn match specVerifyElfComma "," contained nextgroup=specVerifyElfType,specVerifyElfMethod,specError

syn match specDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%set_verify_info_method\>" contained skipwhite nextgroup=specVerifyInfoMethod,specNoSpaceError
syn keyword specVerifyInfoMethod false no none off skip normal strict relaxed contained nextgroup=specError

syn cluster specDirectives add=specDefineMacro,specCondBuild,specDirective,specDirectiveError

let s:methods = [
	\ "set_cleanup_method",
	\ "set_compress_method",
	\ "set_fixup_method",
	\ "set_perl_req_method",
	\ "set_python_compile_method",
	\ "set_python_req_method",
	\ "set_ruby_req_method",
	\ "set_strip_method",
	\ "set_tcl_req_method",
	\ "set_verify_elf_method",
	\ "set_verify_info_method"
	\ ]
exec 'syn region specMacroCommandLocal start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%\%(' . join(s:directives + s:obsolete + s:methods, "\\|") . '\)\>" skip="\\$" end="$" contained skipwhite keepend contains=specDirective,specDirectiveError,@specMacros,specSpecialChar,specDashDash,@Shell'
syn cluster specDirectives add=specMacroCommandLocal

" package
syn region specPackage matchgroup=specSection start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%package\>" end="$" contained keepend oneline contains=specPackageOpts,specWord
syn match specPackageOpts "-n\>" contained skipwhite nextgroup=specWord

syn region specDescription matchgroup=specSection start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%description\>" end="$" contained keepend oneline contains=specDescriptionOpts,specWord
syn match specDescriptionOpts "-n\>" contained skipwhite nextgroup=specWord
syn match specDescriptionOpts "-l\>" contained skipwhite nextgroup=specLangBits,specError

syn region specPost matchgroup=specSection start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%\%(preun\|postun\|pre\|post\|verifyscript\)\>" end="$" contained keepend oneline contains=specPostOpts,specWord
syn match specPostOpts "-[np]\>" contained skipwhite nextgroup=specWord

syn region specTrigger matchgroup=specSection start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%trigger\%(\%(post\)\=un\|in\)\=\>" end="$" contained keepend oneline contains=specOp,specDashDash

" %files
syn region specFiles matchgroup=specSection start="\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%files\>" end="$" contained keepend oneline contains=specFilesOpts,specWord
syn match specFilesOpts "-[nf]\>" contained skipwhite nextgroup=specWord

syn match specFilesDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%\%(dir\|doc\|ghost\|exclude\|readme\|license\)\>" contained
" #if WHY_NOT
"syn match specFilesDirective "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%\%(spec\|donotuse\|missingok\|noreplace\)\>" contained
" #endif
syn match specFilesDefAttr "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%defattr\>" contained nextgroup=specFilesAttrDerArg
syn match specFilesAttr "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%attr\>" contained nextgroup=specFilesAttrArg
syn region specFilesDefAttrArg matchgroup=specSpecialChar start="(" end=")" oneline keepend contained contains=specComma,specFilesAttrBits nextgroup=specError
syn region specFilesAttrArg matchgroup=specSpecialChar start="(" end=")" oneline keepend contained contains=specComma,specFilesAttrBits
syn match specFilesAttrBits "[^[:space:],]\+" contained skipwhite contains=@specMacros,specOctNumber

syn match specFilesDev "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%dev\>" contained nextgroup=specFilesDevArg
syn region specFilesDevArg matchgroup=specSpecialChar start="(" end=")" oneline keepend contained contains=specComma,specFilesDevBits
syn match specFilesDevBits "[^[:space:],]\+" contained skipwhite contains=@specMacros,specOctNumber

syn match specFilesConfig "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%config\>" contained nextgroup=specFilesConfigArg
syn region specFilesConfigArg matchgroup=specSpecialChar start="(" end=")" oneline keepend contained contains=specComma,specFilesConfigBits,specError
syn keyword specFilesConfigBits missingok noreplace contained skipwhite

syn match specFilesVerify "\%(\%(^\|[^%]\)\%(%%\)*%\)\@<!\zs%verify\>" contained nextgroup=specFilesVerifyArg
syn region specFilesVerifyArg matchgroup=specSpecialChar start="(" end=")" oneline keepend contained contains=specComma,specFilesVerifyBits,specError
syn keyword specFilesVerifyBits not md5 size link user group mtime mode rdev contained skipwhite

syn cluster specFilesDirectives add=specFilesDirective,specFilesDefAttr,specFilesAttr,specFilesDev,specFilesConfig,specFilesVerify
syn cluster specDirectives add=@specFilesDirectives

" changelog
syn region specChangelogEntry start="^\*" end="\%(^\* \|\%$\)"re=s-1 contained contains=specChangelogHead
syn region specChangelogLine matchgroup=specChangelogDash start="- " end="$" skip="\n\s" contained skipnl nextgroup=specChangelogLine contains=@Spell,@specText,@specMacros,specCommentError,specChangelogBullet,specTextAreaError
syn region specChangelogHead start="^\*" end="$" oneline contained skipnl nextgroup=specChangelogLine contains=specChangelogStar

syn match specChangelogBullet "\%(^\s\+\)\@<=[\*+-]" contained
syn match specChangelogStar "^\* " contained skipwhite nextgroup=specChangelogDOW,specError
syn match specChangelogVersionRelease "[0-9a-zA-Z_][0-9a-zA-Z_.:-]*" contained nextgroup=specError
syn match specChangelogName ".*<\S\+>" contained skipwhite nextgroup=specChangelogVersionRelease,specNoSpaceError contains=specEmail
syn match specChangelogYear "\<\d\{4}\>" contained skipwhite nextgroup=specChangelogName
syn match specChangelogDay "\<\d\{1,2}\>" contained skipwhite nextgroup=specChangelogYear
syn keyword specChangelogMon Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec contained skipwhite nextgroup=specChangelogDay
syn keyword specChangelogDOW Mon Tue Wed Thu Fri Sat Sun contained skipwhite nextgroup=specChangelogMon

let s:specSectionEnd = '"\ze\_^%\%(package\|prep\|build\|buildmulti\|install\|check\|clean\|preun\|postun\|pre\|post\|files\|changelog\|description\|triggerpostun\|triggerun\|triggerin\|trigger\|verifyscript\)\>"'

exec 'syn region specPreambleSection    start="\ze\%^" matchgroup=specSection end=' . s:specSectionEnd . ' keepend fold contains=@specMacros,@specDirectives,@specConditonals,specPreambleTag,specPackageTag,specComment,specError'
"exec 'syn region specPackageSection    matchgroup=specSection start="^\ze%package\>"rs=s-1  end=' . s:specSectionEnd . ' keepend fold contains=@specMacros,@specDirectives,specPackage,specPackageTag,specComment,specError'
exec 'syn region specPackageSection     start="^%package\>" end=' . s:specSectionEnd . ' keepend fold contains=@specMacros,@specDirectives,@specConditonals,specPackage,specPackageTag,specComment,specError'
exec 'syn region specScriptSection      matchgroup=specSection start="^%\%(prep\|build\%(multi\)\=\|install\|check\|clean\)\>"  end=' . s:specSectionEnd . ' keepend fold contains=@specMacros,@specDirectives,@specConditonals,specComment,@Shell'
exec 'syn region specPostSection        start="^%\%(preun\|postun\|pre\|post\|verifyscript\)\>"  end=' . s:specSectionEnd . ' keepend fold contains=@specMacros,@specDirectives,@specConditonals,specPost,specComment,@Shell'
exec 'syn region specTriggerSection     start="^%trigger\%(\%(post\)\=un\|in\)\=\>"  end=' . s:specSectionEnd . ' keepend fold contains=@specMacros,@specDirectives,@specConditonals,specTrigger,specComment,@Shell'
exec 'syn region specFilesSection       start="^%files\>"  end=' . s:specSectionEnd . ' keepend fold contains=@specFilesDirectives,@specMacros,@specDirectives,@specConditonals,specFiles,specComment'
exec 'syn region specChangelogSection   matchgroup=specSection start="^%changelog\>"  end=' . s:specSectionEnd . ' keepend fold contains=@specText,@specMacros,@specDirectives,@specConditonals,specCommentError,specChangelogEntry'
exec 'syn region specDescriptionSection start="^%description\>.*$"rs=e+1  end=' . s:specSectionEnd . ' keepend fold contains=@Spell,@specText,@specMacros,@specDirectives,@specConditonals,specDescription,specComment,specTextAreaError'


"main types color definitions
hi def link specSection Structure
hi def link specWWWlink PreProc
hi def link specOpts Operator
hi def link specComment Comment
hi def link specTodo Todo
hi def link specPackageTag specPreambleTag
hi def link specPreambleTag Statement
hi def link specDirective PreProc
hi def link specNumber Number

"yes, it's ugly, but white is sooo cool
if &background == "dark"
  hi specGlobalMacro ctermfg=white guifg=white
else
  hi def link specGlobalMacro Identifier
endif

"spec colors
hi def link specColon Special
hi def link specMacroCommandLocal Statement

hi def link specPackage specMacroCommandLocal
hi def link specDescription specMacroCommandLocal
hi def link specPost specMacroCommandLocal
hi def link specTrigger specMacroCommandLocal
hi def link specFiles specMacroCommandLocal

hi def link specPackageOpts specOpts
hi def link specDescriptionOpts specOpts
hi def link specPostOpts specOpts
hi def link specSetupOpts specOpts
hi def link specPatchOpts specOpts
hi def link specFilesOpts specOpts

hi def link specError Error
hi def link specNoSpaceError Error
hi def link specCommentError Error
hi def link specMacroNameError Error
hi def link specDirectiveError Error
hi def link specMacroError Error
hi def link specTextAreaError Error

hi def link specSpecialChar SpecialChar
hi def link specSetupDirective specDirective
hi def link specPatchDirective specDirective
hi def link specFilesDirective specDirective
hi def link specFilesAttr specDirective
hi def link specFilesDev specDirective
hi def link specFilesConfig specDirective
hi def link specFilesVerify specDirective

hi def link specLangBits specBits
hi def link specBuildReqBits specBits
hi def link specReqBits specBits
hi def link specFilesAttrBits specBits
hi def link specFilesDevBits specBits
hi def link specFilesConfigBits specBits
hi def link specFilesVerifyBits specBits
hi def link specBits Operator

hi def link specVerifyElfType specProcType
hi def link specCleanupMethod specProcMethod
hi def link specCompressMethod specProcMethod
hi def link specFixupMethod specProcMethod
hi def link specPerlReqMethod specProcMethod
hi def link specPyCMethod specProcMethod
hi def link specPyReqMethod specProcMethod
hi def link specRubyReqMethod specProcMethod
hi def link specStripMethod specProcMethod
hi def link specTCLReqMethod specProcMethod
hi def link specVerifyElfMethod specProcMethod
hi def link specVerifyInfoMethod specProcMethod
hi def link specVerifyElfEq specOperator

hi def link specDashDash specSpecialChar
hi def link specComma specSpecialChar
hi def link specStripComma specSpecialChar
hi def link specVerifyElfComma specSpecialChar

hi def link specProcType Type
hi def link specProcMethod Constant
hi def link specOperator Operator
hi def link specLogicalOperator Operator

hi def link specChangelogStar specSpecialChar
hi def link specChangelogDash Label
hi def link specChangelogBullet Operator
hi def link specChangelogDOW specDate
hi def link specChangelogMon specDate
hi def link specChangelogDay specDate
hi def link specChangelogYear specDate
hi def link specDate String

hi def link specDecNumber specNumber
hi def link specOctNumber specNumber
hi def link specHexNumber specNumber
hi def link specVersionRelease specNumber
hi def link specChangelogVersionRelease specNumber

hi def link specEmail specWWWlink
hi def link specURL specWWWlink
hi def link specBugID Exception
hi def link specCVE Exception
hi def link specBDU Exception
hi def link specMFSA Exception
hi def link specOVE Exception

hi def link specElse specBlock
hi def link specOp Special
hi def link specPercent SpecialChar
hi def link specMacroIdentifier specPercentMacro
hi def link specConditionalMacro specPercentMacro
hi def link specPercentMacro Identifier
hi def link specIf specBlock
hi def link specEndIf specBlock
hi def link specElse specBlock
hi def link specBlock Function

let b:current_syntax = "spec"
