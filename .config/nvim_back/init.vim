"Vundle
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()            " required

Plugin 'VundleVim/Vundle.vim'  " required
Plugin '907th/vim-auto-save'
call vundle#end()               " required
filetype plugin indent on       " required

"vim-plug
call plug#begin('~/.local/share/nvim/plugged')
set number
set mouse=a
set termguicolors
Plug 'wolandark/vim-live-server', { 'do': 'sudo npm install -g browser-sync' }
Plug 'junegunn/fzf' 
Plug 'junegunn/fzf.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround' 
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Temas para airline
Plug 'Yggdroot/indentLine'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plug 'Shougo/neco-syntax'  " Fuente general de auto completado
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-eunuch'
call plug#end()
let g:fzf_commands_expect = 'alt-enter'
" Guardar historial de búsquedas
let g:fzf_history_dir = '~/.local/share/fzf-history'
map <C-p> :FZF<CR>
map <C-o> :tabnew<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-g> :w<CR>
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
let g:airline_powerline_fonts = 1
set noshowmode  " No mostrar el modo actual (ya lo muestra la barra de estado)
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
let g:deoplete#enable_at_startup = 1
let g:auto_save = 1
augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!
augroup END
