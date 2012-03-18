"
" vim-lambdatex
"   Vim small plugin for compiling LaTeX via platex/dvipdfmx/bibtex
"
" Author: Alisue <lambdalisue@hashnote.net>
"
if exists("s:lambdatex_loaded")
  finish
endif
let s:lambdatex_loaded = 1
let s:save_cpo = &cpo
set cpo&vim

" --- Default settings {{{
if !exists("g:lambdatex_tex_compiler")
  let g:lambdatex_tex_compiler = "platex"
endif
if !exists("g:lambdatex_bib_compiler")
  let g:lambdatex_bib_compiler = "bibtex"
endif
if !exists("g:lambdatex_pdf_compiler")
  let g:lambdatex_pdf_compiler = "dvipdfmx"
endif
if !exists("g:lambdatex_pdf_viewer")
  if has('mac')
    let g:lambdatex_pdf_viewer = "open"
  elseif has('unix')
    let g:lambdatex_pdf_viewer = "gnome-open"
  endif
endif
"}}}

" --- Compile functions {{{
function! s:CompileTex(filename)
  let filename = expand(a:filename)
  silent execute "!" . g:lambdatex_tex_compiler . " " . filename
endfunction
function! s:CompileBib(filename)
  let filename = expand(a:filename)
  silent execute "!" . g:lambdatex_bib_compiler . " " . filename
endfunction
function! s:CompilePdf(filename)
  let filename = expand(a:filename)
  silent execute "!" . g:lambdatex_pdf_compiler . " " . filename
endfunction

function! LambdatexCompile(filename)
  let tex_filename = expand(a:filename)
  let aux_filename = substitute(tex_filename, "\\.tex$", ".aux", "")
  let dvi_filename = substitute(tex_filename, "\\.tex$", ".dvi", "")
  let pdf_filename = substitute(tex_filename, "\\.tex$", ".pdf", "")
  " Save file
  w
  " Compile tex
  call s:CompileTex(tex_filename)
  " Compile aux
  call s:CompileBib(aux_filename)
  " Compile tex twice
  call s:CompileTex(tex_filename)
  call s:CompileTex(tex_filename)
  " Compile pdf
  call s:CompilePdf(dvi_filename)
  " Open pdf
  if exists("g:lambdatex_pdf_viewer")
    silent execute "!" . g:lambdatex_pdf_viewer . " " . pdf_filename
  endif
  redraw!
endfunction
"}}}

" --- Keymap {{{
if !hasmapto('<Plug>(lambdatex_compile)', 'c')
  nmap <Leader>r <Plug>(lambdatex_compile)
endif
nnoremap <Plug>(lambdatex_compile) :call LambdatexCompile("%")<CR>
"}}}

let &cpo = s:save_cpo
