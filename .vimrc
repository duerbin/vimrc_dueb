
"=================================================================================
"
call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/Tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'easymotion/vim-easymotion'
"
"   " Make sure you use single quotes
"
"   " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
	Plug 'junegunn/vim-easy-align'
"
"   " Any valid git URL is allowed
"   Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
"   " Multiple Plug commands can be written in a single line using | separators
"   Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
"   " On-demand loading
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"   Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
"   " Using a non-master branch
"   Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
"   " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"   Plug 'fatih/vim-go', { 'tag': '*' }
"
"   " Plugin options
"   Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
"   " Plugin outside ~/.vim/plugged with post-update hook
"   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
"   " Unmanaged plugin (manually installed and updated)
"   Plug '~/my-prototype-plugin'
"
"   " Initialize plugin system
call plug#end()
"=========================================================================================
"synax config
"
"colorscheme set
set background=dark
let colorschemolarized_termcolors=16                                                                                                           
"let g:solarized_termtrans=1
let g:solarized_contrast="normal"                                                                                                                                     
let g:solarized_visibility="normal"
set t_Co=16
colorscheme solarized
"set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"set termencoding=utf-8
"set encoding=utf-8
"set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
autocmd InsertLeave * se nocul  " 用浅色高亮当前行  
autocmd InsertEnter * se cul    " 用浅色高亮当前行 
set foldenable      " 允许折叠                                                                                                                                        
set foldmethod=manual   " 手动折叠
set number	
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NERDtee设定
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='right'
let NERDTreeWinSize=31
nnoremap f :NERDTreeToggle
func! SaveInputData()                                                                                                                                                 
    exec "tabnew"
    exec 'normal "+gP'
    exec "w! /tmp/input_data"
endfunc
let g:tagbar_left = 1 
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
map <F4> :TagbarToggle<CR>
map <F7> :NERDTreeToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vi vim 
set nocompatible
"set backspace ok
set backspace=indent,eol,start
"记住光标所在的上次位置"                                                                                                                                              
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif 


"
"air line
let g:airline_theme="luna"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>


"""common config
""windows ctrl +s
imap <C+s> <ESC>:w<CR>a 
"文件保存与退出  
nmap fw     :w<CR>  
nmap fq     :q<CR>  
nmap fwq    :wq<CR> 

let mapleader=","
