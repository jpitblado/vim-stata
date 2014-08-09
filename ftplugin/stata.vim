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
map ;c 0i* <esc>j

" make a character line (almost) the width of a typical page
map ,cl o<esc>77i*<esc>0

" insert/remove double bang comment start of line
map ;r 0i//!!rm <esc>0j
map ,rr 07xj
" insert/remove double bang comment end of line
map ;R A //!!rm <esc>0j
map ,RR $6hDj

" insert line for debug output
" Mata
map ,dm O<esc>aerrprintf("!!rm: xx\n")<esc>
map ,dx O<esc>aerrprintf("!!rm: xx\n"); xx<esc>
" Stata
map ,ds O<esc>adi as err `"!!rm: xx"'<esc>
map ;0 O<esc>adi as err `"!!rm: 0"'<esc>
" Stata -- display global macro
map ,dG O<esc>adi as err `"!!rm: xx = "' ${xx}<esc>
map ,dg O<esc>adi as err `"!!rm: xx is \|${xx}\|"'<esc>
" Stata -- display local macro
map ,dL O<esc>adi as err `"!!rm: xx = "' `xx'<esc>
map ,dl O<esc>adi as err `"!!rm: xx is \|`xx'\|"'<esc>
" display Mata debug info
map ,xd O<esc>aerrprintf("!!rm: xx = %g\n", xx) ;<esc>
map ,xl O<esc>aerrprintf("!!rm: xx = %f\n", xx) ;<esc>
map ,xs O<esc>aerrprintf("!!rm: xx = %s\n", xx) ;<esc>

" debug early exit
map ,ex mpo<esc>aexit 1 //!!rm<cr><esc>'p

" END
