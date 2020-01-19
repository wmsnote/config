set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 14


set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
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
Plug 'tpope/vim-fugitive' " git
Plug 'airblade/vim-gitgutter' " git
Plug 'xuyuanp/nerdtree-git-plugin'      " git
Plug 'tpope/vim-surround'    " ys iw "    cs"'  cs(]  ds'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " 安装fzf
Plug 'junegunn/fzf.vim' " vim使用fzf :Files & :Ag
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
Plug 'SirVer/ultisnips' " 代码片段补全
Plug 'honza/vim-snippets'
Plug 'w0rp/ale' " 语法检查
Plug 'scrooloose/syntastic'

call plug#end()



" ================插件设置===========================
let g:auto_save = 1    " 自动保存·插件：vim-auto-save
let g:mapleader = "\<Space>"
let g:maplocalleader = ","
let g:lightline = {'colorscheme': 'onedark'} " onedark theme
let g:airline_theme='onedark' " onedark theme
let g:NERDSpaceDelims = 1
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.git$', '\.DS_Store']
let g:NERDTreeQuitOnOpen = 1
let g:quickmenu_options = "LH"
let g:which_key_hspace = 35
let g:airline_powerline_fonts = 1
let g:closetag_filetypes = 'html,xml'
let g:polyglot_disabled = ['markdown'] 





" ================插件设置===========================





" ==============--START--基础配置--START--======================



set background=dark
set number
set termencoding=utf-8
set encoding=utf-8
set autoindent
set smartindent                                      "开启新行时使用智能自动缩进
set cindent
set expandtab                                         "将Tab键转换为空格
set smarttab
set cursorline                                        " 突出显示当前行
set autoread                                          " 当文件在外部被修改，自动更新该文件
set hlsearch                                          "高亮搜索
set incsearch                                         "搜索实时匹配
set ignorecase                                        "搜索模式里忽略大小写
set smartcase                                         "如果搜索模式包含大写字符，不使用 'ignorecase' 选项，只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用
set wrap                                            "设置自动换行
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
set autochdir
set tabstop=2
set shiftwidth=2
set softtabstop=2
set ruler
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
set t_Co=256
syntax on
" colorscheme onedark
set background=light
colorscheme solarized


if has('gui_running')
  " set background=light
  " colorscheme solarized
  colorscheme gruvbox
  set background=dark
  let g:airline_theme='gruvbox'
else
  set background=dark
  colorscheme onedark
endif 


syntax enable
filetype on
filetype plugin on
filetype plugin indent on


" ==============--END--基础配置--END--======================



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
call g:quickmenu#append('tree', 'NERDTreeToggle', '目录')
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
















" 快捷键提示 vim-which-key
call which_key#register('<Space>', "g:which_key_leader_map")
call which_key#register(',', "g:which_key_localleader_map")

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader>      :<c-u>WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual  ','<CR>

let g:which_key_leader_map = {}
let g:which_key_localleader_map =  {}


" 已近存在的快捷键
let g:which_key_leader_map.r = 'source vim'
" 还没有存在的快捷键

let g:which_key_leader_map['w'] = {
            \ 'name' : '+windows' ,
            \ 'w' : ['<C-W>w'     , 'other-window']          ,
            \ 'd' : ['<C-W>c'     , 'delete-window']         ,
            \ '-' : ['<C-W>s'     , 'split-window-below']    ,
            \ '|' : ['<C-W>v'     , 'split-window-right']    ,
            \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
            \ 'h' : ['<C-W>h'     , 'window-left']           ,
            \ 'j' : ['<C-W>j'     , 'window-below']          ,
            \ 'l' : ['<C-W>l'     , 'window-right']          ,
            \ 'k' : ['<C-W>k'     , 'window-up']             ,
            \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
            \ 'J' : ['resize +5'  , 'expand-window-below']   ,
            \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
            \ 'K' : ['resize -5'  , 'expand-window-up']      ,
            \ '=' : ['<C-W>='     , 'balance-window']        ,
            \ 's' : ['<C-W>s'     , 'split-window-below']    ,
            \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
            \ '?' : ['Windows'    , 'fzf-window']            ,
            \ }


let g:which_key_leader_map.q = {
            \ 'name' : '+buffer' ,
            \ '1' : ['b1'        , 'buffer 1']        ,
            \ '2' : ['b2'        , 'buffer 2']        ,
            \ 'd' : ['bd'        , 'delete-buffer']   ,
            \ 'f' : ['bfirst'    , 'first-buffer']    ,
            \ 'h' : ['Startify'  , 'home-buffer']     ,
            \ 'l' : ['blast'     , 'last-buffer']     ,
            \ 'n' : ['bnext'     , 'next-buffer']     ,
            \ 'p' : ['bprevious' , 'previous-buffer'] ,
            \ '?' : ['Buffers'   , 'fzf-buffer']      ,
            \ }



let g:which_key_localleader_map.g = {
            \'name':'+git',
            \'d':['Gdiff','git diff'],
            \'p':['GitP','git push'],
            \'s':['Gstatus', 'git status'],
            \}


let g:which_key_localleader_map.c = {
            \ 'name' : '+comment',
            \ 'c' : 'comment current line',
            \ 'u' : 'cancel comment',
            \ ',' : 'change comment status',
            \ 'a' : 'change comment style',
            \ 'y' : 'copy before comment',
            \ 's' : 'sex comment',
            \ 'A' : 'comment and Insert',
            \ }











" ===============--END--自定义快捷键--END--========================







" 注释
nmap <localleader>cc <Space>cc
nmap <localleader>cu <Space>cu
nmap <localleader>c, <Space>c,
nmap <localleader>ca <Space>ca
nmap <localleader>c<Space> <Space>c<Space>
nmap <localleader>cy <Space>cy
nmap <localleader>cs <Space>cs
nmap <localleader>cA <Space>cA
" ==============--END--其他--END--==============================








set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8







set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030
set fileformats=unix,dos,mac





" nmap <S-v> "+gp  
vmap <c-c> "+y


imap <c-v> <c-r>+ 

set guioptions-=m
set guioptions-=r
set guioptions-=L
" set guioptions-=T


if has("gui_running")
" au GUIEnter * simalt ~x " 窗口启动时自动最大化
"set guioptions-=m " 隐藏菜单栏
" set guioptions-=T " 隐藏工具栏
"set guioptions-=L " 隐藏左侧滚动条
"set guioptions-=r " 隐藏右侧滚动条
" set guioptions-=b " 隐藏底部滚动条
set showtabline=0 " 隐藏Tab栏

endif













