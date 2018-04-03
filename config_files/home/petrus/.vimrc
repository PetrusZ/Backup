"
" =====================================================================================
"
"       Filename:  .vimrc
"
"    Description:  vim配置文件
"
"        Version:  2.0
"        Created:  2018-03-15 16:57
"
"         Author:  Petrus(silencly07@gmail.com)
"      Copyright:  Copyright (c) 2018, Petrus
"
" ====================================================================================
"
"  < 特性介绍 >"{{{
" 插件管理器
" ==========
" vim-plug
" --------
" 并行安装、更新，支持hook，查看updatediff
"
" 代码补全
" ========
" YouCompleteMe, Ultisnips
" ------------------------
" 完整支持c/c++代码补全，支持常见语言代码补全与snippet，并支持跳转代码功能
"
" 语法检查
" ========
" ale异步语法检查，支持自定义语法引擎。YouCompleteMe支持完整的C/C++语法检查
"
" C/C++
" =====
" cquery, vim-lsp
" ---------------
" 精准跳转c/c++定义，查找引用等功能
"
" cpp-enhanced-highlight
" ----------------------
" c++11/14/17增强高亮
"
" A.vim
" -----
" 快速从源文件切换到头文件
"
" 快速跳转
" ========
" matchit
" -------
" `%`快速跳转到匹配的括号
"
" easymotion
" ----------
" 更加方便、快速的vim搜索
"
" IDE特性
" =======
" nerdtree, tagbar, undotree
" -----------------------------
" 侧边栏浏览文件系统、代码结构、undo历史
"
" tabular, nerdcommenter
" ----------------------
" 快速对齐与快速注释
"
" ack, ctrlp, ctrlp-funky
" -----------------------
" 快速搜索代码、文件、函数
"
" gitgutter
" ---------
" 在vim侧边显示文件的git diff状态，支持stage、undo、preview部分改变
"
" indentLine
" ----------
" 显示缩进线
"
" airline
" -------
" 状态栏增强
"
" sublime特性
" ===========
" multiple-cursors and ctrlsf
" ---------------------------
" 多光标编辑与ctrlsf搜索分窗口即时显示
"
" 其他
" ====
" vimwiki
" -------
" 个人wiki系统，可方便转换为html网页
"
" vim-markdown, makrdown-preview.vim
" ----------------------------------
" markdown语法高亮与实时预览等功能
"
" asyncrun.vim
" ------------
" 异步运行shell命令
"
" youdao-translater
" -----------------
" 有道翻译
"
" 依赖软件
" ========
" git
" ctags
" llvm/clang
" the_silver_searcher aka. ag
" -----------------------------------------------------------------------------"}}}
"  < 常用快捷键 > {{{
" -----------------------------------------------------------------------------
" <F1>       切换Location list
" <F2>       打开quickfix
" <F3>       打开NERDTree
" <F4>       打开tagbar
" <F5>       打开undo tree

" <F9>       开启markdown预览
" <F10>      关闭markdown预览
" <F11>      终端最大、最小化(gnome-terminal)
" <F12>      YcmForceCompileAndDiagnostics

" gD         查询变量，只在本文件中
" gd         查询变量, 只在本函数中
" [i         查询变量的定义
" [<Tab>     跳到变量定义的地方
" ``         返回原处(仅在同一文件内有效)
" mm         标记高亮书签
" <leader>a  启动ag进行全局查找 :Ag [options] pattern [PATH]
" <leader>u  显示最近打开的文件
" <leader>h  取消搜索高亮显示
" <leader>c  清除所有无用的空格
" <leader>e  快速打开.vimrc
" <leader>r  快速重载.vimrc
" <C-o>      回到上次编辑的地方
" <C-e>      停止补全并回到原来文字
" <S-k>      普通模式:man在光标下的函数
" %          在匹配的括号间跳转(matchit)

" windows
" ----------------------------------------------------------------
" <C-c>      关闭分屏窗口
" <C-w><C-o> 将当前的分屏窗口最大化
" <C-j><C-k><C-h><C-l>   在分屏窗口间浏览
"
" airline tab
" -----------
" <learder>1-9      选择index为1-9的airline tab
" <A-m>             选择下一个airline tab
" <A-n>             选择上一个airline tab
" <A-d>             关闭当前airline tab或buffer

" macro
" ----------------------------------------------------------------
" qa 将之后的所有键盘操作录制下来，直到再次在命令模式按下q，并存储在a中 " @a 执行刚刚记录在a里面的键盘操作
" @@ 执行上一次的macro操作

" 十六进制编辑
" ----------------------------------------------------------------
" :%!xxd     把所有的行(%)用本地(!)的xxd程序打开。
" :%!xxd -r  返回正常显示
" xxd本是linux下一个显示、编辑、转换二进制的命令。

" Ultisnips
" ----------------------------------------------------------------
" <Tab>      snips模板补全
" jj         切换到补全的下一处
" kk         切换到补全的上一处
" <M-l>      打开snips模板补全列表

" Ctrlp
" ----------------------------------------------------------------
" <C-p>      打开Ctrlp并以buffer模式打开新文件进行查找
" <leader>u  打开MRU
" <C-d>      更改匹配模式(文件|目录)
" <C-k>      向上选择
" <C-j>      向下选择
" <C-z>      标记要打开的文件
" <C-o>      打开多个文件
" <C-y>      建立新的文件或目录

" CtrlSF
" ----------------------------------------------------------------
" <leader>sf查询光标下的词
" <leader>sfr重新打开CtrlSF
"  In CtrlSF window:
" o, Enter - Jump to file that contains the line under cursor.
" t - Like o but open file in a new tab.
" p - Like o but open file in a preview window.
" O - Like o but always leave CtrlSF window opening.
" T - Lkie t but focus CtrlSF window instead of opened new tab.
" q - Quit CtrlSF window.
" <C-J> - Move cursor to next match.
" <C-K> - Move cursor to previous match.
"
"  In preview window:
" q - Close preview window.

" CtrlPFunky
" ----------------------------------------------------------------
" <Leader>fu      打开CtrlPFunky进行查找
" <Leader>fuw     打开CtrlPFunky查找光标下的词

" A.vim
" ----------------------------------------------------------------
" :A switches to the header file corresponding to the current file being edited (or vise versa)
" :AS splits and switches
" :AV vertical splits and switches
" :AT new tab and switches
" :AN cycles through matches
" :IH switches to file under cursor
" :IHS splits and switches
" :IHV vertical splits and switches
" :IHT new tab and switches
" :IHN cycles through matches
" <Leader>ih switches to file under cursor
" <Leader>is switches to the alternate file of file under cursor (e.g. on  <foo.h> switches to foo.cpp)
" <Leader>ihn cycles through matches

" Tabular
" ----------------------------------------------------------------
" <leader>a=   按'='来对齐排版
" <leader>a:   按':'来对齐排版
" <leader>a<space>   按' '来对齐排版
" 其他  在n或v模式下，输入":Tabularize /," 按','来对对齐排版

" Tagbar
" ----------------------------------------------------------------
" s         可按正序和逆序排序
" <space>   在名称上按空格键可看到它的原型
" p         光标停在tagbar栏，而代码跳到目标位置
" <c-p>     跳到上一个类别
" <c-n>     跳到下一个类别
" x         在放大和还原tagbar栏间切换
" q         关闭tagbar栏

" nerdcommenter插件
" ----------------------------------------------------------------
" <leader>ca          在可选的注释方式之间切换，比如C/C++的块注释/**/和行注释//
" <leader>cc          注释当前行
" <leader>c<space>    切换注释/非注释状态
" <leader>cs          以”性感”的方式注释
" <leader>cA          在当前行尾添加注释符，并进入Insert模式
" <leader>cu          取消注释
" <leader>cl          注释当前行
" Normal模式下，几乎所有命令前面都可以指定行数
" Visual模式下执行命令，会对选中的特定区块进行注释/反注释

" EasyMotion
" Default Mapping      | Details
" ---------------------|----------------------------------------------
" <Leader>f{char}      | Find {char} to the right. See |f|.
" <Leader>F{char}      | Find {char} to the left. See |F|.
" <Leader>t{char}      | Till before the {char} to the right. See |t|.
" <Leader>T{char}      | Till after the {char} to the left. See |T|.
" <Leader>w            | Beginning of word forward. See |w|.
" <Leader>W            | Beginning of WORD forward. See |W|.
" <Leader>b            | Beginning of word backward. See |b|.
" <Leader>B            | Beginning of WORD backward. See |B|.
" <Leader>e            | End of word forward. See |e|.
" <Leader>E            | End of WORD forward. See |E|.
" <Leader>ge           | End of word backward. See |ge|.
" <Leader>gE           | End of WORD backward. See |gE|.
" <Leader>j            | Line downward. See |j|.
" <Leader>k            | Line upward. See |k|.
" <Leader>n            | Jump to latest "/" or "?" forward. See |n|.
" <Leader>N            | Jump to latest "/" or "?" backward. See |N|.
" <Leader>s            | Find(Search) {char} forward and backward.
"                      | See |f| and |F|.

" vim-multiple-cursor插件
" ----------------------------------------------------------------
" <C-n>     multi_cursor_next(start)_key
" <C-p>     multi_cursor_prev_key
" <C-x>     multi_cursor_skip_key
" <ESC>     multi_cursor_quit_key
" v         enter normal mode(after marked all locations with <C-n>
"
" vim-gitgutter插件
" ----------------------------------------------------------------
" ]c            jump to next hunk (change)
" [c            jump to previous hunk (change)
" <Leader>hs    stage the hunk(change)
" <Leader>hu    undo the hunk(change)
" <Leader>hp    preview the hunk(change)
"
" vim-markdown插件
" ----------------------------------------------------------------
" gx        open the link under the cursor in the same browser
" ge        open the link under the cursor in Vim for editing. Useful for relative markdown links.
" ]]        go to next header
" [[        go to previous header
" ][        go to next sibling header if any
" []        go to previous sibling header if any
" ]c        go to Current header
" ]u        go to parent header (Up)
" :HeaderDecrease       Decrease level of all headers in buffer
" :HeaderIncrease       Increase level of all headers in buffer
" :SetexToAtx           Convert all Setex style headers in buffer to Atx. If a range is given, only operate on the range.
" :TableFormat          Format the table under the cursor
" :Toc                  create a quickfix vertical window navigable table of contents with the headers
" -----------------------------------------------------------------------------}}}
"  < Edit Setting >"{{{
" -----------------------------------------------------------------------------
set nocp                  " 设置不兼容vi
set expandtab             " 设置tab
set shiftwidth=4          " 设置tab的间隔
set tabstop=4             " 四个空格代表一个tab
set sts=4                 " 设置softtabstop为4
set showmatch             " 在输入括号时光标会短暂地跳到与之相匹配的括号处
set autoindent            " 设置自动缩进
"set smartindent          " 设置智能缩进
set nowrap                  " 不自动折行
set tw=500                " 设置textwidth为500
set lbr                   " 不在单词中间进行换行
set number                " 设置是否显示行
set guifont=Monospace\ 11 " 设置字体大小
set encoding=utf-8        " 设置编码为utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,GB18030,cp936,big5,euc-jp,euc-kr,latin1
set helplang=cn           " 帮助中文支持
set mouse=v               " 设置粘贴和复制
set ignorecase            " 设置搜索时忽略大小写
set hlsearch              " 高亮搜索结果
set completeopt=menu      " 取消omnicppcomplete预览窗口提示变量定义
set clipboard=unnamedplus " 设置剪贴板
set foldmethod=marker    " 设置折叠方式为标记折叠
"set foldmethod=indent     " 设置折叠方式为缩进折叠
"set foldlevel=500        " 默认打开所有折叠
set confirm               " 关闭时如果存在未保存的文件出现提示
set scrolloff=5           " 距离顶部或底部还有5行的时候就开始滚动屏幕
set complete-=k complete+=k     "将字典补全添加到默认补全列表中

syntax enable
filetype plugin indent on          "开启文件类型插件和缩进识别功能
" -----------------------------------------------------------------------------"}}}
" < GUI模式 配置 >"{{{
" -----------------------------------------------------------------------------
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    " set t_Co=256
    set guitablabel=%M\ %t
endif
" -----------------------------------------------------------------------------"}}}
"  < autocmd 配置 >{{{
" -----------------------------------------------------------------------------
" 手动折叠
"autocmd BufWinLeave .vimrc silent mkview      "vimrc文件自动保存折叠
"autocmd BufWinEnter .vimrc silent loadview    "vimrc自动载入折叠

" 设置只在特定的文件类型才折行
" autocmd FileType vimwiki set wrap
" autocmd BufEnter * if &filetype == "" | set wrap | endif
" autocmd BufEnter * if &filetype == "vimwiki" | set wrap | endif

" 设置文件类型
autocmd BufRead,BufNewFile .vimperatorrc		set filetype=vim
autocmd BufRead,BufNewFile *.cron		set filetype=crontab
" autocmd BufRead,BufNewFile *.conf		set filetype=conf

" 可以自动切换到文件所在的目录
autocmd BufEnter * :lchdir %:p:h

" 回到上次编辑的位置
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \ exe "normal g'\"" |
      \ endif |
      \ endif

" 高亮当前位置(too slow)
" autocmd WinLeave * set nocursorline nocursorcolumn
" autocmd WinEnter * set cursorline nocursorcolumn
" set cursorline "cursorcolumn
" -----------------------------------------------------------------------------"}}}
"  < 键盘映射 配置 >"{{{
" -----------------------------------------------------------------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-c> <c-w>c

inoremap <C-c> <ESC>
inoremap <C-e> <END>
inoremap <C-a> <HOME>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <M-f> <S-Right>
inoremap <M-b> <S-Left>
inoremap <M-n> <Down>
inoremap <M-p> <Up>

" w!!强制sudo存储
cmap w!! %!sudo tee >/dev/null %

" set <Leader> key
let mapleader="\<space>"
" set <localleader> key
" let localleader="."

" imap <C-l> /*
imap jk <Esc>

" no highlight
map <silent> <leader>h :nohlsearch<CR>

" 快速编辑/重载vimrc
nmap <silent> <leader>ev :edit $MYVIMRC<CR>
nmap <silent> <leader>sv :source $MYVIMRC<CR>

" list toggle
let g:lt_location_list_toggle_map = '<F1>'
let g:lt_quickfix_list_toggle_map = '<F2>'

" ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fuw :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

" CtrlSF
nnoremap <leader>sf :CtrlSF <C-R><C-W><cr>
nnoremap <leader>sfr :CtrlSFOpen<CR>

" vim-trailing-whitespace
map <Leader>c :FixWhitespace<cr>

" Tabular plugin
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>a<space> :Tabularize / <CR>
vmap <Leader>a<space> :Tabularize / <CR>

" tags
" nmap <Leader>g :set tags=tags;<CR>

" vim-youdao-translater
vnoremap <silent> <Leader>t <Esc>:Ydv<CR>
nnoremap <silent> <Leader>t <Esc>:Ydc<CR>
noremap <leader>yd :Yde<CR>

" markdown preview
nmap <silent> <F9> <Plug>MarkdownPreview
imap <silent> <F9> <Plug>MarkdownPreview
nmap <silent> <F10> <Plug>StopMarkdownPreview
imap <silent> <F10> <Plug>StopMarkdownPreview
" -----------------------------------------------------------------------------"}}}
"  < 修复功能键 配置 >"{{{
" -----------------------------------------------------------------------------
"execute "set <xUp>=\e[1;*A"
"execute "set <xDown>=\e[1;*B"
"execute "set <xRight>=\e[1;*C"
"execute "set <xLeft>=\e[1;*D"
"execute "set <xHome>=\e[1;*H"
"execute "set <xEnd>=\e[1;*F"
"execute "set <PageUp>=\e[5;*~"
"execute "set <PageDown>=\e[6;*~"
execute "set <F1>=\eOP"
execute "set <F2>=\eOQ"
execute "set <F3>=\eOR"
execute "set <F4>=\eOS"
execute "set <xF1>=\eO1;*P"
execute "set <xF2>=\eO1;*Q"
execute "set <xF3>=\eO1;*R"
execute "set <xF4>=\eO1;*S"
execute "set <F5>=\e[15;*~"
execute "set <F6>=\e[17;*~"
execute "set <F7>=\e[18;*~"
execute "set <F8>=\e[19;*~"
execute "set <F9>=\e[20;*~"
execute "set <F10>=\e[21;*~"
execute "set <F11>=\e[23;*~"
execute "set <F12>=\e[24;*~"

set ttimeoutlen=1
for UseAlt in range (65 , 90 ) + range ( 97 , 122)
        exe "set <M-" .nr2char(UseAlt).">=\<Esc>" .nr2char (UseAlt)
endfor
" -----------------------------------------------------------------------------"}}}
"  < vim-plug 插件管理配置 >"{{{
" -----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

" info is a dictionary with 3 fields
" - name:   name of the plugin
" - status: 'installed', 'updated', or 'unchanged'
" - force:  set on PlugInstall! or PlugUpdate!
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.status == 'updated' || a:info.force
    if filewritable("/home/petrus/.vim/plugged/YouCompleteMe/ycm_build") != 2
        !mkdir /home/petrus/.vim/plugged/YouCompleteMe/ycm_build
    endif
    execute "cd ~/.vim/plugged/YouCompleteMe/ycm_build"
    !cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON -DUSE_PYTHON2=OFF . ~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp
    !cmake --build . --target ycm_core
  endif
endfunction

function! BuildCquery(info)
  if a:info.status == 'installed' || a:info.status == 'updated' || a:info.force
    execute "cd ~/.vim/plugged/cquery"
    !./waf configure --llvm-config=llvm-config --prefix=~/.local  build
    !./waf install
  endif
endfunction

" for help tags
Plug 'junegunn/vim-plug'
" unload by default
Plug 'cquery-project/cquery', { 'on': [], 'do': function('BuildCquery') }

" Code Completions
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
" Plug 'ervandew/supertab'

" Fast navigation
Plug 'adelarsq/vim-matchit'
Plug 'easymotion/vim-easymotion'

" Fast editing
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'

" IDE features
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'Kris2k/A.vim'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'dyng/ctrlsf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'

Plug 'w0rp/ale'
" Plug 'vim-syntastic/syntastic'
Plug 'prabirshrestha/async.vim' | Plug 'prabirshrestha/vim-lsp'
" Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

" Other Util
Plug 'Valloric/ListToggle'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'tpope/vim-obsession'
Plug 'ianva/vim-youdao-translater'
Plug 'bronson/vim-trailing-whitespace'
Plug 'skywind3000/asyncrun.vim'
Plug 'chrisbra/Colorizer'

" colorscheme
Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'
Plug 'KabbAmine/yowish.vim'
Plug 'tomasr/molokai'
Plug 'lifepillar/vim-solarized8'
Plug 'romainl/flattened'

" use vim to write
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.vim'
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'vim-pandoc/vim-pandoc-after'

" Plug 'c.vim'
" Plug 'craigemery/vim-autotag'
"
" NO LONGER MAINTAINED:
" Plug 'lilydjwg/fcitx.vim'
" Plug 'vim-scripts/TaskList.vim'

call plug#end()
" -----------------------------------------------------------------------------"}}}
" < colorscheme 配置 >"{{{
" -----------------------------------------------------------------------------
set termguicolors         " support true color terminal
set background=dark

" colorscheme tango
" colorscheme yowish
" colorscheme solarized8
" colorscheme flattened_dark

" let g:molokai_original = 1
" let g:rehash256 = 1
" colorscheme molokai

let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox
"
" let g:seoul256_background = 234
" colorscheme seoul256
" -----------------------------------------------------------------------------"}}}
"  < Ack 插件配置 >"{{{
" -----------------------------------------------------------------------------
" 搜索光标下的词
nnoremap <leader>a :Ack! <C-R><C-W><CR>

" use ag instead of ack
if executable('ag')
    let g:ackprg = 'ag -t --vimgrep'
endif
" -----------------------------------------------------------------------------"}}}
"  < EasyMotion 插件配置 >"{{{
" -----------------------------------------------------------------------------
"  EasyMotion leader key
map , <Plug>(easymotion-prefix)

" let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1

" 跨窗口搜索
" <Leader>f{char} to move to {char}
map  ,f <Plug>(easymotion-bd-f)
nmap ,f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map ,L <Plug>(easymotion-bd-jk)
nmap ,L <Plug>(easymotion-overwin-line)
" Move to word
map  ,w <Plug>(easymotion-bd-w)
nmap ,w <Plug>(easymotion-overwin-w)

" 增强默认搜索
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" CONFLICT:
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

" JK Motion
map ,l <Plug>(easymotion-lineforward)
map ,j <Plug>(easymotion-j)
map ,k <Plug>(easymotion-k)
map ,h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
" ----------------------------------------------------------------------------"}}}
"  < Tagbar 插件配置 >"{{{
" -----------------------------------------------------------------------------
nmap <F4> :TagbarToggle<cr>
let g:tagbar_left=0
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_foldlevel = 1
" -----------------------------------------------------------------------------"}}}
"  < Undotree 插件配置 >"{{{
" -----------------------------------------------------------------------------
nnoremap <F5> :UndotreeToggle<CR>

" persistent undo
set undofile
set undodir=~/.undodir/
set undolevels=500 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer
" -----------------------------------------------------------------------------"}}}
"  < ctrlp 插件配置 >"{{{
" -----------------------------------------------------------------------------
map <C-p> :CtrlPBuffer<cr>
map <leader>u :CtrlPMRU<cr>

" set Ctrlp local working dir
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_open_multiple_files = 'i'   "hidden in buffer
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store,.jpg,.png,.tar,.doc,.pdf " MacOSX/Linux
" -----------------------------------------------------------------------------"}}}
"  < nerdcommenter 插件配置 >"{{{
" -----------------------------------------------------------------------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" map <leader>ct <plug>NERDCommenterToggle
" -----------------------------------------------------------------------------"}}}
"  < Ultisnips 插件配置 >"{{{
" -----------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="kk"
let g:UltiSnipsJumpBackwardTrigger="jj"
let g:UltiSnipsListSnippets="<M-l>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"let g:ulti_expand_or_jump_res = 0 "default value, just set once
"function! Ulti_ExpandOrJump_and_getRes()
"    call UltiSnips_ExpandSnippetOrJump()
"    return g:ulti_expand_or_jump_res
"endfunction
"
"inoremap <tab> <C-R>=(Ulti_ExpandOrJump_and_getRes() > 0)?"":IMAP_Jumpfunc('', 0)<CR>
" -----------------------------------------------------------------------------"}}}
" < YouCompleteMe 插件配置 >"{{{
" -----------------------------------------------------------------------------
" set completeopt=longest,menu
let g:ycm_global_ycm_extra_conf = '~/.vim/default_ycm_extra_conf.py'
" 不显示开启vim时检查ycm_extra_conf文件的信息
" let g:ycm_confirm_extra_conf=0
"
" 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
" set completeopt=longest,menu
" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
            \ 'nerdtree' : 1,
            \ 'tagbar' : 1,
            \ 'qf' : 1,
            \ 'notes' : 1,
            \ 'markdown' : 1,
            \ 'unite' : 1,
            \ 'text' : 1,
            \ 'vimwiki' : 1,
            \ 'pandoc' : 1,
            \ 'infolog' : 1,
            \ 'mail' : 1
            \}

" " 输入第2个字符开始补全
" let g:ycm_min_num_of_chars_for_completion=2
" " 禁止缓存匹配项,每次都重新生成匹配项
" " let g:ycm_cache_omnifunc=0
" " 开启语义补全
" let g:ycm_seed_identifiers_with_syntax=1
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 关闭语法检查显示
" let g:ycm_show_diagnostics_ui = 0

" 自动开启、关闭函数原型预览
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" 修改对C函数的补全快捷键，默认是CTRL + space
let g:ycm_key_invoke_completion = '<C-l>'
" youcompleteme  默认tab  s-tab 和 ultisnips 冲突
" let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']

" let g:ycm_error_symbol = 'E'
" let g:ycm_warning_symbol = 'W'

nnoremap <F12> :YcmForceCompileAndDiagnostics<CR>

" NEED_TO_FIX: conflict with vim-fugitgive
nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gi :YcmCompleter GoToInclude<CR>
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <leader>gt :YcmCompleter GetType<CR>
nnoremap <leader>gdc :YcmCompleter GetDoc<CR>
nnoremap <leader>gp :YcmCompleter GetParent<CR>

" NEED_TO_FIX: conflict with UltiSnips
" 输入2个字符即弹出语义补全
" let g:ycm_semantic_triggers =  {
			" \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			" \ 'cs,lua,javascript': ['re!\w{2}'],
			" \ }

" Function to slove conlict with ultisnips
function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<C-n>"
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

function! g:UltiSnips_Reverse()
  call UltiSnips#JumpBackwards()
  if g:ulti_jump_backwards_res == 0
    return "\<C-P>"
  endif

  return ""
endfunction

if !exists("g:UltiSnipsJumpForwardTrigger")
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif

if !exists("g:UltiSnipsJumpBackwardTrigger")
  let g:UltiSnipsJumpBackwardTrigger="<c-tab>"
endif

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger     . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " .     g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"
" -----------------------------------------------------------------------------"}}}
"  < vim-lsp 插件配置 >"{{{
" -----------------------------------------------------------------------------
if executable('cquery')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'cquery',
      \ 'cmd': {server_info->['cquery']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'initialization_options': { 'cacheDirectory': '/home/petrus/.vim/cquery_cache' },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
      \ })
endif

nnoremap <leader>lf :LspDefinition<CR>
nnoremap <leader>ls :LspDocumentSymbol<CR>
nnoremap <leader>lh :LspHover<CR>
nnoremap <leader>lr :LspReferences<CR>
nnoremap <leader>lrn :LspRename<CR>

" let g:lsp_tag_stack = 1
" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('~/vim-lsp.log')
" -----------------------------------------------------------------------------"}}}
" "  < LanguageClient-neovim 插件配置 >"{{{
" -----------------------------------------------------------------------------
" let g:LanguageClient_serverCommands = {
" \ 'cpp': ['/home/petrus/.local/bin/cquery', '--log-file=/tmp/cq.log']
" \ }
" let g:LanguageClient_diagnosticsDisplay = { }
" let g:LanguageClient_loadSettings = 1
" let g:LanguageClient_loggingLevel = 'DEBUG'
" Use an absolute configuration path if you want system-wide settings
" let g:LanguageClient_settingsPath = '~/.vim/setting.json'
" -----------------------------------------------------------------------------"}}}
"  < vim-airline 插件配置 >"{{{
" -----------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" whitespace
let g:airline_detect_whitespace=0
let g:airline#extensions#whitespace#enable = 0
let g:airline#extensions#whitespace#checks = [ ]
" let g:airline#extensions#whitespace#show_message = 1
" let g:airline#extensions#whitespace#symbol = '!'

" enalbe aireline buffer index and select
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <A-n> <Plug>AirlineSelectPrevTab
nmap <A-m> <Plug>AirlineSelectNextTab

" too slow
" switching to buffer 1 - 9 is mapped to ,[nOfBuffer]
" for buffer_no in range(1, 9)
  " execute "nmap <Leader>" . buffer_no . " <Plug>AirlineSelectTab" . buffer_no . "\<CR>"
" endfor

" switching to buffer 10 - 100 is mapped to ,0[nOfBuffer]
" for buffer_no in range(10, 100)
  " execute "nmap <Leader>" . buffer_no . " <Plug>AirlineSelectTab" . buffer_no . "\<CR>"
" endfor

" close buffer
nmap <A-d> :bd<CR>
" -----------------------------------------------------------------------------"}}}
" < vim-markdown 配置 >"{{{
" -----------------------------------------------------------------------------
let g:vim_markdown_folding_disabled=1
" disable conceal
let g:vim_markdown_conceal = 0
" -----------------------------------------------------------------------------"}}}
"  < vim-cpp-enhanced-highlight 插件配置 >"{{{
" -----------------------------------------------------------------------------
" NOTE: change colorscheme will get more syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
" NOTE: it will slow down scroll speed
" let g:cpp_experimental_template_highlight = 1
" let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
" let g:cpp_no_function_highlight = 1
" let c_no_curly_error=1
" -----------------------------------------------------------------------------"}}}
"  < vimwiki 插件配置 >"{{{
" -----------------------------------------------------------------------------
map <leader>wha :VimwikiAll2HTML<cr>
map <leader>wto :VimwikiTOC<cr>
let g:vimwiki_list = [{'path_html':'/home/petrus/vimwiki/html',
                       \ 'template_path':'/home/petrus/vimwiki/html/assets/',
                       \ 'template_default': 'default',
                       \ 'template_ext': '.tpl',
                       \ 'auto_export': 0}]
let g:vimwiki_camel_case = 0
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_folding = 1
let g:vimwiki_browsers = ['chromium']
let g:vimwiki_CJK_length = 1
let g:vimwiki_dir_link = 'index'
" let g:vimwiki_html_header_numbering = 1
let g:vimwiki_conceallevel = 2
" let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,del,br,hr,div,code,h1'
let g:vimwiki_valid_html_tags = 'div, span, table, td, pre, tr'
" -----------------------------------------------------------------------------"}}}
"  < syntastic 插件配置 >"{{{
" -----------------------------------------------------------------------------
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list = 2
let g:syntastic_loc_list_height = 5
let g:syntastic_enable_highlighting = 0
let g:syntastic_always_populate_loc_list = 1

" let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11'
" -----------------------------------------------------------------------------"}}}
"  < ale 插件配置 >"{{{
" -----------------------------------------------------------------------------
" Disable c/cpp linter for conflict with YouCompleteMe
let g:ale_linters = {'c': [], 'cpp': [], 'python': ['flake8']}

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

" c
" let g:ale_cpp_gcc_executable="gcc"
" let g:ale_cpp_gcc_options="-std=c11"

" c++
" let g:ale_cpp_gcc_executable="gcc"
" let g:ale_cpp_gcc_options="-std=c++11 -Wall"

" clang
" let g:ale_cpp_gcc_options="-std=c++14"

" key map
" nmap <F2> <Plug>(ale_next_wrap)
" nmap <s-F2> <Plug>(ale_previous_wrap)
" nmap <c-F2> :ALEDetail<CR>
" -----------------------------------------------------------------------------"}}}
"  < NERDTree 插件配置 >"{{{
" -----------------------------------------------------------------------------
map <F3> :NERDTreeToggle<CR>
"map <F5> t :NERDTreeMirror<CR>

"let loaded_nerd_tree=1    " 禁用所有与NERD_tree有关的命令
"let NERDTreeIgnore=['/.vim$','/~$']    " 不显示指定的类型的文件
"let NERDTreeShowHidden=0    " 不显示隐藏文件(好像只在linux环境中有效)
"let NERDTreeSortOrder=['//$','/.cpp$','/.c$','/.h$', '*']    " 排序
let NERDTreeCaseSensitiveSort=0     " 不分大小写排序
let NERDTreeWinSize=30
"let NERDTreeShowLineNumbers=1
let NERDTreeShowBookmarks=1
"let NERDTreeQuitOnOpen=1    " 打开文件后, 关闭NERDTrre窗口
"let NERDTreeHighlightCursorline=1     " 高亮NERDTrre窗口的当前行
"nmap <silent> <leader>tmk :Bookmark expand(/"<cword>/")<cr>
" -----------------------------------------------------------------------------"}}}
"  < indentLine 插件配置 >"{{{
" -----------------------------------------------------------------------------
" 用于显示对齐线，与 indent_guides 在显示方式上不同，根据自己喜好选择了
" 在终端上会有屏幕刷新的问题，这个问题能解决有更好了
" 开启/关闭对齐线
nmap <leader>il :IndentLinesToggle<CR>

let g:indentLine_char = "│"

" 设置终端对齐线颜色
" let g:indentLine_color_term = 239
" 设置 GUI 对齐线颜色
" let g:indentLine_color_gui = '#A4E57E'
" -----------------------------------------------------------------------------"}}}
"  < Misc >"{{{
" -----------------------------------------------------------------------------
" asyncrun 插件配置
let g:asyncrun_bell=1
let g:airline_section_error = airline#section#create_right(['%{g:asyncrun_status}'])
" auto open quickfix when text add to it
" autocmd QuickFixCmdPost * botright copen 8


" vim-multiple-cursor 插件配置
" let g:multi_cursor_quit_key='<C-c>'
let g:multi_cursor_exit_from_insert_mode=0
" -----------------------------------------------------------------------------"}}}
