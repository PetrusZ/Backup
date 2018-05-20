" =====================================================================================
"
"       Filename:  plugin_list.vim
"
"    Description:  vim插件配置文件
"
"        Version:  1.0
"        Created:  2018-04-21 11:56
"
"         Author:  Petrus(silencly07@gmail.com)
"      Copyright:  Copyright (c) 2018, Petrus
"
" ====================================================================================

call plug#begin('~/.vim/plugged')

" info is a dictionary with 3 fields
" - name:   name of the plugin
" - status: 'installed', 'updated', or 'unchanged'
" - force:  set on PlugInstall! or PlugUpdate!
function! BuildYCM(info) abort
  if a:info.status ==# 'installed' || a:info.status ==# 'updated' || a:info.force
    if filewritable('/home/petrus/.vim/plugged/YouCompleteMe/ycm_build') != 2
        !mkdir /home/petrus/.vim/plugged/YouCompleteMe/ycm_build
    endif
    execute 'cd ~/.vim/plugged/YouCompleteMe/ycm_build'
    !cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON -DUSE_PYTHON2=OFF . ~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp
    !cmake --build . --target ycm_core -- -j5
  endif
endfunction

function! BuildCquery(info) abort
  if a:info.status ==# 'installed' || a:info.status ==# 'updated' || a:info.force
    execute 'cd ~/.vim/plugged/cquery'
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
" Plug 'Shougo/echodoc.vim'

Plug 'Shougo/denite.nvim'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
" Plug 'ryanoasis/vim-devicons'

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
Plug 'tyru/open-browser.vim'
" Plug 'skywind3000/vim-keysound'
" Plug 'tpope/vim-rsi'

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
Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'vim-pandoc/vim-pandoc-after'

" Plug 'c.vim'
" Plug 'craigemery/vim-autotag'
"
" NO LONGER MAINTAINED:
" Plug 'lilydjwg/fcitx.vim'
" Plug 'vim-scripts/TaskList.vim'

call plug#end()