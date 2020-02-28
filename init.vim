let mapleader = ','   " Map the leader key to a comma.
" pip install --user --upgrade neovim
" pip3 install --user --upgrade neovim
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
tnoremap <c-j> <c-w><c-j>
tnoremap <c-k> <c-w><c-k>
tnoremap <c-l> <c-w><c-l>
tnoremap <c-h> <c-w><c-h>


vmap <c-c> "+y
imap <c-v> <c-r>+

" Use :make to run pylint for Python files.
autocmd filetype python setlocal makeprg=pylint3\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
autocmd filetype python setlocal errorformat=%f:%l:\ %m

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Install vim-plug if it's not already installed (Unix-only).
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.github.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



call plug#begin('~/.vim/plugged')

" Plug 'shougo/neosnippet.vim'
" Plug 'shougo/neosnippet-snippets'
" Plug 'shougo/neocomplete.vim'
" Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive' " git
Plug 'tpope/vim-surround'    " ys iw "    cs"'  cs(]  ds'
Plug 'sjl/gundo.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'mattn/emmet-vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'bling/vim-bufferline'
Plug 'altercation/vim-colors-solarized'
Plug 'mhinz/vim-startify' " 美化插件 首页
Plug 'vim-airline/vim-airline' " 美化插件 状态栏
Plug 'vim-airline/vim-airline-themes' " 美化插件 状态栏
Plug 'kana/vim-textobj-entire' " 支持文本对象e:整个文本
Plug 'kana/vim-textobj-user' " 支持文本对象e:整个文本
Plug '907th/vim-auto-save' " 自动保存
Plug 'joshdick/onedark.vim' " theme
Plug 'morhetz/gruvbox'
Plug 'alvan/vim-closetag'
Plug 'sheerun/vim-polyglot' " 支持语法高亮扩展插件
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " 目录树
Plug 'scrooloose/nerdcommenter' " 注释
Plug 'airblade/vim-gitgutter' " git
Plug 'xuyuanp/nerdtree-git-plugin'      " git
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " 安装fzf
Plug 'junegunn/fzf.vim' " vim使用fzf :Files & :Ag
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-github-dashboard'
Plug 'ctrlpvim/ctrlp.vim' " <C-p> 文件搜索
Plug 'jiangmiao/auto-pairs' " 自动括号
Plug 'chiel92/vim-autoformat' " 代码格式话 例如golang需要gofmt 使用:Autoformat
Plug 'sbdchd/neoformat'   " :Neoformat
Plug 'skywind3000/quickmenu.vim' " 命令提示侧栏
Plug 'liuchengxu/vim-which-key' " 快捷键提示
Plug 'ervandew/supertab' " tab补全
Plug 'yggdroot/indentline'   " 缩进
Plug 'majutsushi/tagbar' " outline 视图
Plug 'vasconcelloslf/vim-interestingwords'   "<leader>k 高亮 <leader>K 取消高亮
Plug 'w0rp/ale' " 语法检查
Plug 'ryanoasis/vim-devicons'
Plug 'vim-syntastic/syntastic'

" Python
Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
"Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
"Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
Plug 'tweekmonster/braceless.vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }


let g:deoplete#enable_at_startup = 1
let g:auto_save = 1    " 自动保存·插件：vim-auto-save
let g:lightline = {'colorscheme': 'gruvbox'} " onedark theme
let g:airline_theme='gruvbox' " onedark theme
let g:NERDSpaceDelims = 1
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1 "显示书签
let NERDTreeMinimalUI=1 "不显示帮助面板
let NERDTreeIgnore = ['\.git$', '\.DS_Store']
let g:NERDTreeQuitOnOpen = 1
let g:quickmenu_options = "LH"
let g:airline_powerline_fonts = 1
let g:closetag_filetypes = 'html,xml'
let g:polyglot_disabled = ['markdown']

" Set CtrlP working directory to a repository root (with a
" fallback to current directory).
" let g:ctrlp_working_path_mode = 'ra'

" Remap CtrlP actions to be prefixed by a leader key.
noremap <leader>p :CtrlP<cr>
noremap <leader>b :CtrlPBuffer<cr>
noremap <leader>m :CtrlPMRU<cr>


let g:plug_timeout = 300  " Increase vim-plug timeout for YouCompleteMe.
" sudo apt install cmake llvm
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

noremap <leader>] :YcmCompleter GoTo<cr>
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1





" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'
" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger="<cr>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"


" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
" (via http://stackoverflow.com/a/22253548/1626737)
" let g:SuperTabDefaultCompletionType    = '<C-n>'
" let g:SuperTabCrMapping                = 0
" let g:UltiSnipsExpandTrigger           = '<tab>'
" let g:UltiSnipsJumpForwardTrigger      = '<tab>'
" let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
" let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"




" Regenerate tags when saving Python files.
" sudo apt-get install ctags
autocmd BufWritePost *.py silent! !ctags -R &


noremap <f5> :GundoToggle<cr>  " Map Gundo to <F5>.


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let b:ale_linters = ['flake8', 'pylint']
let b:ale_fixers = ['autopep8', 'yapf']
let b:ale_warn_about_trailing_whitespace = 0

let g:syntastic_python_checkers = ['pylint']

let g:coc_global_extensions = ['coc-python', 'coc-vimlsp', 'coc-html', 'coc-json', 'coc-css', 'coc-tsserver', 'coc-yank', 'coc-lists', 'coc-gitignore', 'coc-vimlsp', 'coc-tailwindcss', 'coc-stylelint', 'coc-tslint', 'coc-lists', 'coc-git', 'coc-explorer', 'coc-pyright', 'coc-sourcekit', 'coc-translator', 'coc-flutter']







call plug#end()








" ====================
" === Editor Setup ===
" ====================
" ===
" === System
" ===
let &t_ut=''
set autochdir


" ===
" === Editor behavior
" ===
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 14
" set spell
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.
set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces. Essential in Python.
set backspace=2            " Fix backspace behavior on most terminals.
set number
" set relativenumber
set cursorline
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set wildmode=list:longest,full  " Complete till longest string, then open menu.
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set visualbell
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
"silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup
set directory=~/.config/nvim/tmp/backup
if has('persistent_undo')
  set undofile
  set undodir=~/.config/nvim/tmp/undo
endif
set colorcolumn=80
set updatetime=1000
set virtualedit=block
set hlsearch                    " Highlight search results.
set incsearch                   " Search as you type.
set clipboard=unnamed,unnamedplus  " Copy into system (*, +) registers.
set tags=tags;  " Look for a tags file recursively in parent directories.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set background=dark
set smartindent                                      "开启新行时使用智能自动缩进
set cindent
set smarttab
set autoread                                          " 当文件在外部被修改，自动更新该文件
set fileformats=unix,dos,mac                          "给出文件的<EOL>格式类型
set mouse=a                    " 在任何模式下启用鼠标
if has('mouse')
  set mouse=a
endif
set nofoldenable                                        "折叠
set breakindent
set linebreak
set nobackup
set noswapfile
set history=1024
set ruler
set t_Co=256
colorscheme gruvbox
filetype on
filetype plugin on
filetype plugin indent on
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

" ===
" === Terminal Behaviors
" ===
let g:neoterm_autoscroll = 1





" ===============--START--自定义快捷键--START--========================

" NERDTree
map <leader>n :NERDTreeToggle<CR>
" 使vim配置文件生效
nnoremap <leader>r :source $MYVIMRC <CR>
" 命令提示菜单
noremap <silent> <leader>/ :call quickmenu#toggle(0)<CR>





call g:quickmenu#append('# common', '')
call g:quickmenu#append('LastEX', '@:', '重复上一个命令')
call g:quickmenu#append('split |', 'vsp', '垂直分割')
call g:quickmenu#append('split -', 'sp', '水平分割')
call g:quickmenu#append('fzf', 'Files', '搜索文件')
call g:quickmenu#append('NERDTreeToggle', 'NERDTreeToggle', '目录')
call g:quickmenu#append('GundoToggle', 'GundoToggle', '撤销树')
call g:quickmenu#append('Autoformat', 'Autoformat', '格式化文件')
call g:quickmenu#append('terminal', 'terminal', '打开终端')
call g:quickmenu#append('TagbarToggle', 'TagbarToggle', 'outline视图')
call g:quickmenu#append('# vim', '')
call g:quickmenu#append('Source', 'source $MYVIMRC', 'source $MYVIMRC')
call g:quickmenu#append('Home', 'Startify', 'Startify Home Page')
call g:quickmenu#append('# plugin', '')
call g:quickmenu#append('PlugInstall', 'PlugInstall', '安装插件')
call g:quickmenu#append('PlugClean', 'PlugClean', '清除插件')
call g:quickmenu#append('# buffer', '')
call g:quickmenu#append('Buffers', 'Buffers', 'Buffers')
call g:quickmenu#append('CtrlPBuffer', 'CtrlPBuffer', 'CtrlPBuffer')
call g:quickmenu#append('# requester', '')
call g:quickmenu#append('HTTPClientDoRequest', 'HTTPClientDoRequest', 'HTTPClientDoRequest')







































