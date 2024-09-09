"tham khảo của Vũ Nguyễn Coder


call plug#begin('~/AppData/Local/nvim/plugged')

" Theme
  Plug 'Mofiqul/dracula.nvim',                  " Dracula Theme
  Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

" File browser
  Plug 'preservim/nerdTree'                     " File browser  
  Plug 'Xuyuanp/nerdtree-git-plugin'            " Git status
  Plug 'ryanoasis/vim-devicons'                 " Icon
  Plug 'unkiwii/vim-nerdtree-sync'              " Sync current file 
  Plug 'jcharum/vim-nerdtree-syntax-highlight',
    \ {'branch': 'escape-keys'}

" File search
  Plug 'junegunn/fzf', 
    \ { 'do': { -> fzf#install() } }            " Fuzzy finder 
  Plug 'junegunn/fzf.vim'

" Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" Terminal
  Plug 'voldikss/vim-floaterm'                  " Float terminal

" Code intellisense
  Plug 'neoclide/coc.nvim', 
    \ {'branch': 'release'}                     " Language server protocol (LSP) 
  Plug 'jiangmiao/auto-pairs'                   " Parenthesis auto 
  Plug 'mattn/emmet-vim' 
  Plug 'preservim/nerdcommenter'                " Comment code 
  " Plug 'liuchengxu/vista.vim'                   " Function tag bar
  Plug 'alvan/vim-closetag'                     " Auto close HTML/XML tag 
    \ { 
      \ 'do': 'yarn install '
              \ .'--frozen-lockfile '
              \ .'&& yarn build',
      \ 'branch': 'main' 
    \ }

" Code syntax highlight
  " Plug 'yuezk/vim-js'                           " Javascript
  " Plug 'MaxMEllon/vim-jsx-pretty'               " JSX/React
  " Plug 'jackguo380/vim-lsp-cxx-highlight'       " C/C++
  " Plug 'uiiaoo/java-syntax.vim'                 " Java
  Plug 'sheerun/vim-polyglot'
  
" Debugging
  Plug 'puremourning/vimspector'                " Vimspector

" Source code version control 
  Plug 'tpope/vim-fugitive'                     " Git infomation 
  Plug 'tpope/vim-rhubarb' 
  Plug 'airblade/vim-gitgutter'                 " Git show changes 
  Plug 'samoshkin/vim-mergetool'                " Git merge

" Fold 
  Plug 'tmhedberg/SimpylFold'
call plug#end()




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a                 " Enable mouse
set expandtab               " Tab setting 
set tabstop=4               " Tab setting 
set shiftwidth=4            " Tab setting
set listchars=tab:\¦\       " Tab charactor 
set list
set foldmethod=syntax         
set foldnestmax=1
set foldlevelstart=3        "  
set number                  " Show line number
set ignorecase              " Enable case-sensitive 

" Disable backup
set nobackup
set nowb
set noswapfile

" Optimize 
set synmaxcol=3000    "Prevent breaking syntax hightlight when string too long. Max = 3000"
set lazyredraw
au! BufNewFile,BufRead *.json set foldmethod=indent " Change foldmethod for specific filetype

syntax on

" Enable copying from vim to clipboard
if has('win32')
  set clipboard=unnamed  
else
  set clipboard=unnamedplus
endif

" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
    \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''
      \ | checktime 
    \ | endif
autocmd FileChangedShellPost *
    \ echohl WarningMsg 
    \ | echo "File changed on disk. Buffer reloaded."
    \ | echohl None


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Resize pane
nmap <M-Right> :vertical resize +1<CR>    
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>

" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nmap /\ :noh<CR>


" Set theme 
colorscheme dracula


set termguicolors
autocmd VimEnter * call s:setup_lualine()
function! s:setup_lualine() abort
lua<<EOF
require("bufferline").setup{
  options = {
    indicator = {
      style = 'none',
    },
    diagnostics = "coc",
  }
}
EOF
endfunction

" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Close buffer without exitting vim 
nnoremap <silent> <leader>bd :bp \| sp \| bn \| bd<CR>

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor