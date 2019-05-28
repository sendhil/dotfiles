" Status Bar
set laststatus=2
let g:airline_powerline_fonts=1
set t_Co=256
let g:airline_theme='murmur'
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_y=""
let g:airline_skip_empty_sections = 1
let g:airline_exclude_preview = 1

" function! VimGoAirline(...)
"   if &filetype == 'go'
"     let w:airline_section_warning = airline#section#create(['whitespace', '%{go#statusline#Show()}'])
"   endif
" endfunction
" call airline#add_statusline_func('VimGoAirline')

let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

function! SetTabs()
  set autoindent noexpandtab tabstop=4 shiftwidth=4
endfunction
