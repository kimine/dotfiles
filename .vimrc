syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf',  { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'kshenoy/vim-signature'
Plug 'mileszs/ack.vim'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'rust-lang/rust.vim'
Plug 'easymotion/vim-easymotion'

"for buffer
Plug 'moll/vim-bbye'
"Plug 'fholgado/minibufexpl.vim'
"for edit
Plug 'dyng/ctrlsf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'sjl/gundo.vim'
Plug 'gcmt/wildfire.vim'

Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'roxma/vim-tmux-clipboard'

"for cpp
"Plug 'Mizuchi/STL-Syntax'

"Plug 'xolox/vim-lua-ftplugin'
Plug 'tbastos/vim-lua'

"for python
"Plugin 'davidhalter/jedi'
"Plugin 'davidhalter/jedi-vim'
"Plug 'klen/python-mode'

"for golang
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'} 

"for js
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'ternjs/tern_for_vim'

"for haskell
"Plug 'Shougo/vimproc.vim'
"Plug 'Shougo/neocomplete.vim'
"Plug 'eagletmt/ghcmod-vim'
"Plug 'eagletmt/neco-ghc'
"Plug 'neovimhaskell/haskell-vim'

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

"for display
Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

"theme
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'chriskempson/vim-tomorrow-theme'

" shell
Plug 'dag/vim-fish'

call plug#end()

set rtp+=~/.fzf
set t_Co=256
set ai
set si
set tabstop=4
set softtabstop=4
set shiftwidth=4
set cindent
set expandtab
set number
set relativenumber
set smarttab
set smartindent
set completeopt=longest,menu
set hlsearch
set hidden
set updatetime=400
set gcr=a:block-blinkon0
set cursorline
set cc=80
set guioptions-=l 
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T
set ruler
set laststatus=2
set splitbelow
set termwinsize=10x0
set clipboard=unnamed

set background=dark
"colorscheme molokai
"colorscheme dracula
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'soft'


let mapleader=","
map <silent> <leader>f :FZF<cr>
map <silent> <leader>b :Buffers<cr>
map <silent> <leader>m :Marks<cr>
let g:fzf_buffers_jump=1
let g:fzf_layout = { 'down': '40%'}

map <silent> <leader>ln :lne<cr>
map <silent> <leader>lp :lpr<cr>
map <silent> <leader>cn :cn<cr>
map <silent> <leader>cp :cp<cr>

let g:vim_markdown_folding_disabled = 1
let g:syntastic_always_populate_loc_list=0
let g:syntastic_python_checkers = ['pyflakes']
"let g:syntastic_python_checkers = ['pylint']

map <silent> <leader>ee :e ~/.vimrc<cr>
autocmd! bufwritepost .vimrc source ~/.vimrc
nmap <silent> <leader>ll :bufdo e<cr>


if executable('jq')
    map <silent> <leader>j :%!jqf .<cr>
endif


"""""""""""""""""""""""""""
" fugitive   options      "
"""""""""""""""""""""""""""
map <silent> <leader>sgd :Git diff<cr>
map <silent> <leader>sgb :Git blame<cr>
map <silent> <leader>ga :Git add<cr>


"""""""""""""""""""""""""""
" json    options         "
"""""""""""""""""""""""""""
let g:vim_json_syntax_conceal = 0

"""""""""""""""""""""""""""
" rainbow     options     "
"""""""""""""""""""""""""""
let g:rainbow_active = 1
let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}


"""""""""""""""""""""""""""
" ctrlsf      options     "
"""""""""""""""""""""""""""
let g:ctrlsf_populate_qflist = 1
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_context = '-C 3'
let g:ctrlsf_winsize = '30%'
nmap <leader>fr <Plug>CtrlSFCwordPath<cr>
vmap <leader>fs <Plug>CtrlSFVwordExec
nmap <leader>ft :CtrlSFToggle<cr>

"""""""""""""""""""""""""""
" easymotion  options     "
"""""""""""""""""""""""""""
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)
let g:EasyMotion_smartcase=1

"""""""""""""""""""""""""""
" go      options         "
"""""""""""""""""""""""""""
"let g:go_fmt_command = 'goimports'
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_arguments = 1
let g:go_auto_type_info = 1


au FileType go nmap <Leader>gi <Plug>(go-info)
au FileType go nmap <Leader>gb <Plug>(go-build)
au FileType go nmap <Leader>gr <Plug>(go-run)
au FileType go nmap <Leader>gf <Plug>(go-referrers) 
au FileType go nmap <Leader>gs :GoDecls<cr>


au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null


"""""""""""""""""""""""""""
" haskell  options         "
"""""""""""""""""""""""""""
let g:necoghc_enable_detailed_browse = 1
let g:haskellmode_completion_ghc = 0
let g:ghcmod_hlint_options = ['--ignore=Redundant $']
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc


"""""""""""""""""""""""""""
" python-mode options     "
"""""""""""""""""""""""""""
let g:pymode_rope=0
let g:pymode_folding=0


"""""""""""""""""""""""""""
" ack     options         "
"""""""""""""""""""""""""""

if executable('ag')
    let g:ackprg = 'ag --vimgrep --ignore tags'
endif


"if executable('rg')
"    let g:ackprg = 'rg --vimgrep --ignore tags'
"endif
let ack_autoclose=0
nnoremap <Leader>rf :Ack -w <cword><cr>


"""""""""""""""""""""""""""
" sess options            "
"""""""""""""""""""""""""""

set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
nmap <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
nmap <leader>rs :soruce! my.vim<cr> :rviminfo! my.viminfo<cr>


"""""""""""""""""""""""""""
" winj options            "
"""""""""""""""""""""""""""
nmap <leader>nw <C-W><C-W>
nmap <leader>lw <C-W>l
nmap <leader>hw <C-W>h
nmap <leader>kw <C-W>k
nmap <leader>jw <C-W>j

"""""""""""""""""""""""""""
" tags options            "
"""""""""""""""""""""""""""
nmap <leader>tn :tnext<cr>
nmap <leader>tp :tpre<cr>


"""""""""""""""""""""""""""
" tagbar options          "
"""""""""""""""""""""""""""
let tagbar_left=1
nmap <leader>tb :TagbarToggle<cr>
let tagbar_width=24
let g:tagbar_sort = 0
let g:tarbar_compact=1

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:0',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


"""""""""""""""""""""""""""
" ycm  options            "
"""""""""""""""""""""""""""
nnoremap <leader>gd :YcmCompleter GoTo<cr>
let g:ycm_confirm_extra_conf = 0
let g:ycm_cache_omnifunc = 0
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_min_num_of_chars_for_completion = 0
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<C-j>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>', '<C-k>']
let g:ycm_key_invoke_completion = '<C-Enter>'

"let g:ycm_semantic_triggers = {'haskell' : ['.']}


"""""""""""""""""""""""""""
" neocomp  options        "
"""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

"""""""""""""""""""""""""""
" nerdtree options        "
"""""""""""""""""""""""""""
nmap <leader>fl :NERDTreeToggle<cr>
let NERDTreeWinPos="right"
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeWinSize=20

"""""""""""""""""""""""""""
" undo toggle             "
"""""""""""""""""""""""""""
nnoremap <leader>h :GundoToggle<cr>

"""""""""""""""""""""""""""
" cscope config           "
"""""""""""""""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e-

"""""""""""""""""""""""""""
" buffer options             "
"""""""""""""""""""""""""""
nmap <silent> <leader>bn :bn<cr>
nmap <silent> <leader>bp :bp<cr>
nnoremap <leader>bd :Bdelete<cr>

"""""""""""""""""""""""""""
" power line optiong      "
"""""""""""""""""""""""""""
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enable=1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tmuxline#enabled=1
let g:tmuxline_powerline_separators=1


let g:python3_host_skip_check = 1
let g:deoplete#enable_at_startup = 1

hi matchparen ctermbg=darkgrey ctermfg=darkblue

inoremap <C-Q>     <esc>:q<cr>
nnoremap <C-Q>     :q<cr>
vnoremap <C-Q>     <esc>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>Q :qa!<cr>

" Save
inoremap <C-s>     <C-O>:update<cr>
nnoremap <C-s>     :update<cr>
nnoremap <leader>s :update<cr>
nnoremap <leader>w :update<cr>


