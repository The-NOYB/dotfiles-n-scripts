filetype plugin on
set number
set relativenumber
set ruler
set cursorline
set shellcmdflag=-ic
syntax on
set path+=**
set splitright
set tabstop=4 shiftwidth=4 expandtab
set <a-cr>=^[^M
set omnifunc=syntaxcomplete#Complete
let g:netrw_banner=0
let g:netrw_browse_split=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.S\+'
autocmd Filetype fortran setlocal makeprg=/bin/gfortran 
autocmd Filetype fortran setlocal tabstop=2 shiftwidth=2 expandtab
nnoremap <leader>for :-1read /home/noyb/.vim/fortstr.txt<CR>2ecl
nnoremap <leader>pyc :-1read /home/noyb/.vim/pyclass.txt<CR>2ecl
map <F5> :make %<CR>
command W w
command Q q
nmap n :m+1<CR>
nmap m :m-2<CR>

hi MatchParen term=bold cterm=underline ctermbg=203 ctermfg=0
hi cursorline cterm=none ctermfg=none ctermbg=235
hi cursorlinenr term=bold cterm=bold ctermfg=220
hi LineNr ctermfg=136 ctermbg=NONE cterm=NONE
hi Normal ctermfg=180 ctermbg=NONE cterm=NONE
hi SignColumn ctermfg=103 ctermbg=NONE cterm=NONE
hi SpecialComment ctermfg=161 ctermbg=NONE cterm=NONE
hi Typedef ctermfg=215 ctermbg=NONE cterm=NONE
hi Title ctermfg=76 ctermbg=NONE cterm=bold
hi Folded ctermfg=111 ctermbg=NONE cterm=NONE
hi PreCondit ctermfg=111 ctermbg=NONE cterm=NONE
hi Include ctermfg=111 ctermbg=NONE cterm=NONE
hi NonText ctermfg=NONE ctermbg=NONE cterm=NONE
hi DiffText ctermfg=NONE ctermbg=17 cterm=NONE
hi ErrorMsg ctermfg=NONE ctermbg=88 cterm=NONE
hi Debug ctermfg=65 ctermbg=NONE cterm=NONE
hi PMenu ctermfg=none ctermbg=233 cterm=NONE
hi Identifier ctermfg=183 ctermbg=NONE cterm=NONE
hi SpecialChar ctermfg=65 ctermbg=NONE cterm=NONE
hi Conditional guifg=#ffb964 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#c59f6f guibg=NONE guisp=NONE gui=NONE ctermfg=137 ctermbg=NONE cterm=NONE
hi Special guifg=#799d6a guibg=NONE guisp=NONE gui=NONE ctermfg=65 ctermbg=NONE cterm=NONE
hi StatusLine ctermfg=233 ctermbg=15 cterm=NONE
hi Label guifg=#ffb964 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#101010 guibg=#eeeeee guisp=#eeeeee gui=NONE ctermfg=233 ctermbg=255 cterm=NONE
hi Search guifg=#f0a0c0 guibg=#302028 guisp=#302028 gui=underline ctermfg=218 ctermbg=236 cterm=underline
hi Delimiter guifg=#668799 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi Statement guifg=#8197bf guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi Character guifg=#cc3910 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Number guifg=#cf6a4c guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
hi Boolean guifg=#8197bf guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi Operator guifg=#1a74a1 guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi TabLineFill ctermfg=136 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=#220000 guibg=#220000 guisp=#220000 gui=NONE ctermfg=52 ctermbg=52 cterm=NONE
hi CursorColumn guifg=NONE guibg=#1c1c1c guisp=#1c1c1c gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Define guifg=#8fbfdc guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi Function guifg=#fad07a guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#a0a8b0 guibg=#384048 guisp=#384048 gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi PreProc guifg=#8fbfdc guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi Visual guifg=NONE guibg=#404040 guisp=#404040 gui=NONE ctermfg=NONE ctermbg=242 cterm=NONE
hi VertSplit ctermfg=235 ctermbg=235 cterm=Bold
hi Exception guifg=#ffb964 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi Keyword guifg=#ffb964 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi Type guifg=#ffb964 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#100920 guisp=#100920 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Cursor guifg=NONE guibg=#b0d0f0 guisp=#b0d0f0 gui=NONE ctermfg=NONE ctermbg=153 cterm=NONE
hi Error guifg=NONE guibg=#902020 guisp=#902020 gui=NONE ctermfg=NONE ctermbg=88 cterm=NONE
hi SpecialKey guifg=#808080 guibg=#343434 guisp=#343434 gui=NONE ctermfg=8 ctermbg=236 cterm=NONE
hi Constant guifg=#cf6a4c guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
hi Tag guifg=#799d6a guibg=NONE guisp=NONE gui=NONE ctermfg=65 ctermbg=NONE cterm=NONE
hi String guifg=#99ad6a guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
hi MatchParen ctermfg=15 ctermbg=108 cterm=bold
hi Repeat ctermfg=215 ctermbg=NONE cterm=NONE
hi Directory ctermfg=186 ctermbg=NONE cterm=NONE
hi Structure ctermfg=111 ctermbg=NONE cterm=NONE
hi Macro ctermfg=111 ctermbg=NONE cterm=NONE
hi DiffAdd ctermfg=NONE ctermbg=23 cterm=NONE
hi TabLine ctermfg=220 ctermbg=241 cterm=NONE
hi TabLineSel ctermfg=220 ctermbg=NONE cterm=NONE
hi stringdelimiter ctermfg=101 ctermbg=NONE cterm=NONE
hi string ctermfg=107 ctermbg=NONE cterm=NONE
hi constant ctermfg=173 ctermbg=NONE cterm=NONE
hi normal ctermfg=187 ctermbg=NONE cterm=NONE
hi identifier ctermfg=111 ctermbg=NONE cterm=NONE
hi comment ctermfg=29 ctermbg=NONE cterm=NONE
hi function ctermfg=222 ctermbg=NONE cterm=NONE
hi directory ctermfg=186 ctermbg=NONE cterm=NONE
