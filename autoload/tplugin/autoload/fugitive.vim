call TPluginCommand('com! -nargs=* Git', 'fugitive')
call TPluginCommand('com! -nargs=* Gcd', 'fugitive')
call TPluginCommand('com! -nargs=* Glcd', 'fugitive')
call TPluginCommand('com! -nargs=* Gcommit', 'fugitive')
call TPluginCommand('com! -nargs=* Ggrep', 'fugitive')
call TPluginCommand('com! -nargs=* Glog', 'fugitive')
call TPluginCommand('com! -nargs=* Gedit', 'fugitive')
call TPluginCommand('com! -nargs=* Gsplit', 'fugitive')
call TPluginCommand('com! -nargs=* Gvsplit', 'fugitive')
call TPluginCommand('com! -nargs=* Gtabedit', 'fugitive')
call TPluginCommand('com! -nargs=* Gpedit', 'fugitive')
call TPluginCommand('com! -nargs=* Gwrite', 'fugitive')
call TPluginCommand('com! -nargs=* -bang -range Gread', 'fugitive')
call TPluginCommand('com! -nargs=* -bang Gdiff', 'fugitive')
call TPluginCommand('com! -nargs=* Gmove', 'fugitive')
call TPluginCommand('com! -nargs=* -range Gblame', 'fugitive')
call TPluginCommand('com! Gremove', 'fugitive')
call TPluginCommand('com! Gstatus', 'fugitive')
TPluginAfter \<fugitive\> do fugitive_utility User Fugitive | do fugitive BufReadPost
" TPluginAfter \<fugitive\> do fugitive_utility VimEnter | do fugitive_utility User Fugitive | do fugitive BufReadPost
