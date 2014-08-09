" ftplugin/stata.vim - maps for Stata source files
" Maintainer:   Jeff Pitblado <jpitblado@stata.com>
" Last Change:  10aug2014

if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

" I use '!!rm' in my debug output so it is easy to search for and remove later

" insert/remove double bang comment start of line
nnoremap <buffer> <localleader>r 0i//!!rm <esc>0j
nnoremap <buffer> <localleader>rr 07xj

" insert line for debug output
" Mata
nnoremap <buffer> <localleader>dm O<esc>aerrprintf("!!rm: xx\n")<esc>
nnoremap <buffer> <localleader>dx O<esc>aerrprintf("!!rm: xx\n"); xx<esc>
" Stata
nnoremap <buffer> <localleader>ds O<esc>adi as err `"!!rm: xx"'<esc>
nnoremap <buffer> <localleader>0 O<esc>adi as err `"!!rm: 0"'<esc>
" Stata -- display global macro
nnoremap <buffer> <localleader>dG O<esc>adi as err `"!!rm: xx = "' ${xx}<esc>
nnoremap <buffer> <localleader>dg O<esc>adi as err `"!!rm: xx is \|${xx}\|"'<esc>
" Stata -- display local macro
nnoremap <buffer> <localleader>dL O<esc>adi as err `"!!rm: xx = "' `xx'<esc>
nnoremap <buffer> <localleader>dl O<esc>adi as err `"!!rm: xx is \|`xx'\|"'<esc>
" display Mata debug info
nnoremap <buffer> <localleader>xd O<esc>aerrprintf("!!rm: xx = %g\n", xx) ;<esc>
nnoremap <buffer> <localleader>xl O<esc>aerrprintf("!!rm: xx = %f\n", xx) ;<esc>
nnoremap <buffer> <localleader>xs O<esc>aerrprintf("!!rm: xx = %s\n", xx) ;<esc>

" replace 'xx' in the current line with ...
nnoremap <buffer> <localleader>xx :s/xx/

" debug early exit
nnoremap <buffer> <localleader>sexit mpo<esc>aexit 99 //!!rm<cr><esc>'p
nnoremap <buffer> <localleader>mexit mpo<esc>aexit(99) //!!rm<cr><esc>'p

" end: ftplugin/stata.vim
