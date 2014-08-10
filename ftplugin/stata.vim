" ftplugin/stata.vim - maps for Stata source files
" Maintainer:   Jeff Pitblado <jpitblado@stata.com>
" Last Change:  09aug2014

if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

" I use '!!rm' in my debug output so it is easy to search for and remove later

" insert/remove double bang comment start of line
nnoremap <buffer> <localleader>c 0i//!!rm <esc>0j
nnoremap <buffer> <localleader>C 07xj

" update the version comment at the top of the file
nnoremap <buffer> <localleader>uu gg/\<version\>\\|\<VERSION\>/<cr>6wcw<esc>,ddJ:nohlsearch<cr>
nnoremap <buffer> <localleader>vv ,uu?\.?<cr><c-a>:nohlsearch<cr>
nnoremap <buffer> <localleader>hh gg/\<version\>\\|\<VERSION\>/<cr>6wcw<cr><esc>k,ddJJx?\.?<cr><c-a>:nohlsearch<cr>

" Mata debug message
nnoremap <buffer> <localleader>m0 Oerrprintf("!!rm: 0\n")<esc>
" Mata show object
nnoremap <buffer> <localleader>mx Oerrprintf("!!rm: xx\n"); xx<esc>
" Mata show real scalar value
nnoremap <buffer> <localleader>mg Oerrprintf("!!rm: xx = %g\n", xx) ;<esc>
" Mata show integer scalar value
nnoremap <buffer> <localleader>mf Oerrprintf("!!rm: xx = %f\n", xx) ;<esc>
" Mata show string scalar value
nnoremap <buffer> <localleader>ms Oerrprintf("!!rm: xx = %s\n", xx) ;<esc>
" Mata exit early
nnoremap <buffer> <localleader>mee mpoexit(9999) //!!rm<cr><esc>'p

" Stata debug message
nnoremap <buffer> <localleader>s0 Odi as err `"!!rm: 0"'<esc>
" Stata show global macro
nnoremap <buffer> <localleader>sG Odi as err `"!!rm: xx = "' ${xx}<esc>
nnoremap <buffer> <localleader>sg Odi as err `"!!rm: xx is \|${xx}\|"'<esc>
" Stata show local macro
nnoremap <buffer> <localleader>sL Odi as err `"!!rm: xx = "' `xx'<esc>
nnoremap <buffer> <localleader>sl Odi as err `"!!rm: xx is \|`xx'\|"'<esc>
" Stata exit early
nnoremap <buffer> <localleader>see mpoexit 9999 //!!rm<cr><esc>'p

" replace 'xx' in the current line with ...
nnoremap <buffer> <localleader>xx :s/xx/

" end: ftplugin/stata.vim
