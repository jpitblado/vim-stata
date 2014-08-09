" ftplugin/stata.vim - maps for Stata source files
" Maintainer:   Jeff Pitblado <jpitblado@stata.com>
" Last Change:  09aug2014

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
	finish
endif
" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" insert/remove double bang comment start of line
nnoremap <localleader>r 0i//!!rm <esc>0j
nnoremap <localleader>rr 07xj
" insert/remove double bang comment end of line
nnoremap <localleader>R A //!!rm <esc>0j
nnoremap <localleader>RR $6hDj

" insert line for debug output
" Mata
nnoremap <localleader>dm O<esc>aerrprintf("!!rm: xx\n")<esc>
nnoremap <localleader>dx O<esc>aerrprintf("!!rm: xx\n"); xx<esc>
" Stata
nnoremap <localleader>ds O<esc>adi as err `"!!rm: xx"'<esc>
nnoremap <localleader>0 O<esc>adi as err `"!!rm: 0"'<esc>
" Stata -- display global macro
nnoremap <localleader>dG O<esc>adi as err `"!!rm: xx = "' ${xx}<esc>
nnoremap <localleader>dg O<esc>adi as err `"!!rm: xx is \|${xx}\|"'<esc>
" Stata -- display local macro
nnoremap <localleader>dL O<esc>adi as err `"!!rm: xx = "' `xx'<esc>
nnoremap <localleader>dl O<esc>adi as err `"!!rm: xx is \|`xx'\|"'<esc>
" display Mata debug info
nnoremap <localleader>xd O<esc>aerrprintf("!!rm: xx = %g\n", xx) ;<esc>
nnoremap <localleader>xl O<esc>aerrprintf("!!rm: xx = %f\n", xx) ;<esc>
nnoremap <localleader>xs O<esc>aerrprintf("!!rm: xx = %s\n", xx) ;<esc>

" replace 'xx' in the current line with ...
nnoremap <localleader>xx :s/xx/

" debug early exit
nnoremap <localleader>sexit mpo<esc>aexit 99 //!!rm<cr><esc>'p
nnoremap <localleader>mexit mpo<esc>aexit(99) //!!rm<cr><esc>'p

" end: ftplugin/stata.vim
