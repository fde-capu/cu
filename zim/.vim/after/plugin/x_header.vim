" ********************************************* "
"                                               "
"                      :|::|::||::|:|:::|::::|  "
"  x_header.vim        :||:::||:|:|:|||::|||:|  "
"                      |:||||::::::||||||:|::|  "

"                                               "
"  C20200221015226 ::||||                       "
"  U20200221015348 :|:|:|                       "
"                                               "
" ********************************************* "
"
" This file is based on:
" git@github.com:pbondoer/vim-42header.git
" ...with the implementation of xic.
"

function! s:ext(cmd, args)
	let s:ret = system(a:cmd . " " . a:args)
	return s:ret
endfunction


let s:asciiartX = split(s:ext("xic", "random array=3"), ",") + ["","","",""]
"let s:asciiartX = split(s:ext("xic", "random array=4"), ",") + ["","",""]

let s:asciiart = [
			\"        :::      ::::::::",
			\"      :+:      :+:    :+:",
			\"    +:+ +:+         +:+  ",
			\"  +#+  +:+       +#+     ",
			\"+#+#+#+#+#+   +#+        ",
			\"     #+#    #+#          ",
			\"    ###   ########.fr    "
			\]

let s:start		= '/*'
let s:end		= '*/'
let s:fill		= '*'
let g:isx		= 42

function! s:config(x)
	if a:x == 42
		let g:isx		= 42
		let s:length	= 80
		let s:margin	= 5
	endif
	if a:x == 69 
		let g:isx		= 69
		let s:length	= 49
		let s:margin	= 3
	endif
endfunction

let s:types		= {
			\'\.c$\|\.h$\|\.cc$\|\.hh$\|\.cpp$\|\.hpp$\|\.php\|\.glsl':
			\['/*', '*/', '*'],
			\'\.htm$\|\.html$\|\.xml$':
			\['<!--', '-->', '*'],
			\'\.js$':
			\['//', '//', '*'],
			\'\.tex$':
			\['%', '%', '*'],
			\'\.ml$\|\.mli$\|\.mll$\|\.mly$':
			\['(*', '*)', '*'],
			\'\.vim$\|\vimrc$':
			\['"', '"', '*'],
			\'\.el$\|\emacs$':
			\[';', ';', '*'],
			\'\.f90$\|\.f95$\|\.f03$\|\.f$\|\.for$':
			\['!', '!', '/']
			\}

function! s:filetype()
	let l:f = s:filename()

	let s:start	= '#'
	let s:end	= '#'
	let s:fill	= '*'

	for type in keys(s:types)
		if l:f =~ type
			let s:start	= s:types[type][0]
			let s:end	= s:types[type][1]
			let s:fill	= s:types[type][2]
		endif
	endfor
endfunction

function! s:ascii(n)
	if g:isx == 42
		return s:asciiart[a:n - 3]
	endif
	if g:isx == 69
		return s:asciiartX[a:n - 3]
	endif
endfunction

function! s:textline6(left, right)
	let l:left = strpart(a:left, 0, s:length - s:margin * 3 - strlen(a:right) + 2)
	return s:start . repeat(' ', s:margin - strlen(s:start)) . l:left . repeat(' ', 0 + s:length - s:margin * 2 - strlen(l:left) - strlen(a:right)) . a:right . repeat(' ', s:margin - strlen(s:end)) . s:end
endfunction

function! s:textline(left, right)
	let l:left = strpart(a:left, 0, s:length - s:margin * 3 - strlen(a:right) + 1)
	return s:start . repeat(' ', s:margin - strlen(s:start)) . l:left . repeat(' ', s:length - s:margin * 2 - strlen(l:left) - strlen(a:right)) . a:right . repeat(' ', s:margin - strlen(s:end)) . s:end
endfunction

function! s:line(n)
	if a:n == 1 || a:n == 11 " top and bottom line
		return s:start . ' ' . repeat(s:fill, s:length - strlen(s:start) - strlen(s:end) - 2) . ' ' . s:end
	elseif a:n == 2 || a:n == 10 " blank line
		return s:textline('', '')
	elseif a:n == 3 || a:n == 5 || a:n == 7 " empty with ascii
		return s:textline('', s:ascii(a:n))
	elseif a:n == 4 " filename
		return s:textline(s:filename(), s:ascii(a:n))
	elseif a:n == 6 " author
		if g:isx == 69
			return s:textline("", s:ascii(a:n))
			return s:textline("    " . s:user() . " <" . s:mail() . ">", s:ascii(a:n))
		endif
		if g:isx == 42
			return s:textline6("By: " . s:user() . " <" . s:mail() . ">", s:ascii(a:n))
		endif
	elseif a:n == 8 " created
		if g:isx == 69
			return s:textline("C" . s:date() . " " . s:user(), s:ascii(a:n))
		endif
		if g:isx == 42
			return s:textline("Created: " . s:date() . " by " . s:user(), s:ascii(a:n))
		endif
	elseif a:n == 9 " updated
		if g:isx == 69
			return s:textline("U" . s:date() . " " . s:user(), s:ascii(a:n))
		endif
		if g:isx == 42
			return s:textline("Updated: " . s:date() . " by " . s:user(), s:ascii(a:n))
		endif
	endif
endfunction

function! s:user()
	if g:isx == 69
		let l:user = s:ext("xic", "hex random")
	endif		
	if g:isx == 42
		let l:user = "fde-capu"
	endif
	return l:user
endfunction

function! s:mail()
	let l:mail = $MAIL
	if exists('g:hdr42mail')
		let l:mail = g:hdr42mail
	endif
	if strlen(l:mail) == 0
		if g:isx == 69
			let l:mail = s:ext("xic", "hex random")
		endif
		if g:isx == 42
			let l:mail = "fde-capu@student.42sp.org.br"
		endif	
	endif
	return l:mail
endfunction

function! s:filename()
	let l:filename = expand("%:t")
	if strlen(l:filename) == 0
		let l:filename = "< new >"
	endif
	return l:filename
endfunction

function! s:date()
	if g:isx == 69
		return strftime("%Y%m%d%H%M%S")
	endif
	if g:isx == 42
		return strftime("%Y/%m/%d %H:%M:%S")
	endif
endfunction

function! s:insert()
	let l:line = 11

	" empty line after header
	call append(0, "")

	" loop over lines
	while l:line > 0
		call append(0, s:line(l:line))
		let l:line = l:line - 1
	endwhile
endfunction

function! s:update()
	call s:filetype()
	if getline(9) =~ s:start . repeat(' ', s:margin - strlen(s:start)) . "U"
		if &mod
			call setline(9, s:line(9))
		endif
		call setline(4, s:line(4)) " calls new filename
		return 0
	endif
	return 1
endfunction

function! s:stdheader()
	if s:update()
		call s:insert()
	endif
endfunction


" Bind command and shortcut
call s:config(42)
command! Stdheader call s:config(42) | call s:stdheader ()
command! StdheaderX call s:config(69) | call s:stdheader ()
nmap <f1> <esc>:Stdheader<CR>
nmap <f2> <esc>:StdheaderX<CR>
autocmd BufWritePre * call s:update ()
