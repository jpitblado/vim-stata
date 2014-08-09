" Vim filetype plugin file -- mappings for do-files, ado-files, and mata-files
" Language:     Stata and Mata
" Maintainer:   Jeff Pitblado <jpitblado@stata.com>
" Last Change:  14nov2011
" Version:	1.0.4

" Log:

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
	finish
endif
" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" comment out the current line
nnoremap ;c 0i* <esc>j

" make a character line (almost) the width of a typical page
nnoremap ,cl o<esc>77i*<esc>0

" insert/remove double bang comment start of line
nnoremap ;r 0i//!!rm <esc>0j
nnoremap ,rr 07xj
" insert/remove double bang comment end of line
nnoremap ;R A //!!rm <esc>0j
nnoremap ,RR $6hDj

" insert line for debug output
" Mata
nnoremap ,dm O<esc>aerrprintf("!!rm: xx\n")<esc>
nnoremap ,dx O<esc>aerrprintf("!!rm: xx\n"); xx<esc>
" Stata
nnoremap ,ds O<esc>adi as err `"!!rm: xx"'<esc>
nnoremap ;0 O<esc>adi as err `"!!rm: 0"'<esc>
" Stata -- display global macro
nnoremap ,dG O<esc>adi as err `"!!rm: xx = "' ${xx}<esc>
nnoremap ,dg O<esc>adi as err `"!!rm: xx is \|${xx}\|"'<esc>
" Stata -- display local macro
nnoremap ,dL O<esc>adi as err `"!!rm: xx = "' `xx'<esc>
nnoremap ,dl O<esc>adi as err `"!!rm: xx is \|`xx'\|"'<esc>
" display Mata debug info
nnoremap ,xd O<esc>aerrprintf("!!rm: xx = %g\n", xx) ;<esc>
nnoremap ,xl O<esc>aerrprintf("!!rm: xx = %f\n", xx) ;<esc>
nnoremap ,xs O<esc>aerrprintf("!!rm: xx = %s\n", xx) ;<esc>

" debug early exit
nnoremap ,ex mpo<esc>aexit 1 //!!rm<cr><esc>'p

" END
