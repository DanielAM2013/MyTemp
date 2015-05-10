set number
set textwidth=80
set tabstop=4
	
" Split
set splitright                                                              

" Swap
set noswapfile

" Ctags
set tags+=.git/tags

set colorcolumn=80,160

hi ColorColumn ctermbg=black
hi Folded ctermfg=darkblue  ctermbg=black 

"" Foldsi
autocmd BufWinEnter *.* silent loadview 
autocmd BufWinLeave *.* mkview

" Tabs
noremap <S-Left> gT
inoremap <S-Left> <Esc> gTgi
noremap <S-Right> gt
inoremap <S-Right> <Esc> gtgi

nnoremap <C-]> :tab sp<CR>:exec("tag ".expand("<cword>")) <CR>
inoremap <C-]> <Esc>:tab sp<CR>:exec("tag ".expand("<cword>"))" <CR>

noremap <F2> :mkview<CR>:w! <CR>
inoremap <F2> <Esc>:mkview<CR>:w!<CR>gi

nnoremap <F3> :q!<CR>
inoremap <F3> <Esc>:q!<CR>gi

nnoremap <F5> :call Make() <CR><CR>
inoremap <F5> <Esc>:call Make()<CR><CR>gi

nnoremap <F7> :call View() <CR><C-L>
inoremap <F7> <Esc>:call View()<CR><C-L>gi


fu! Make()
	exec "wa"
	exec "!make > /dev/null 2>&1 &"
endfunction

fu! View()
	exec "wa"
	exec "!make view  > /dev/null 2>&1 & "
endfunction




