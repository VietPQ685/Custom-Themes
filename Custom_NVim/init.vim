" tham khảo của Vũ Nguyễn Coder


" basic settings
set mouse=a                 " Enable mouse
set expandtab               " Tab setting 
set tabstop=4               " Tab setting 
set shiftwidth=4            " Tab setting
set listchars=tab:\¦\       " Tab charactor 
set autoindent              " automatinally indent
set smarttab
set softtabstop=4
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


" Resize pane
nmap <M-Right> :vertical resize +1<CR>    
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>


" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nmap /\ :noh<CR>


call plug#begin('~/.config/nvim/plugged')

  Plug 'Mofiqul/dracula.nvim'                               " theme
  Plug 'joshdick/onedark.vim',                              " theme
  Plug 'preservim/nerdTree'                                 " nerdTree
  Plug 'vim-airline/vim-airline'                            " airline
  Plug 'vim-airline/vim-airline-themes'                     " airline theme
  Plug 'neoclide/coc.nvim', {'branch': 'release'}           " coc
  Plug 'ryanoasis/vim-devicons'                             " icons without colors
  Plug 'nvim-tree/nvim-web-devicons'                        " icons with colors
  Plug 'akinsho/bufferline.nvim', { 'tag': '*' }            " bufferline
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }       " fzf
  Plug 'junegunn/fzf.vim'                                   " fzf
  Plug 'jiangmiao/auto-pairs'                               " auto pairs
  Plug 'mattn/emmet-vim'                                    " emmet vim
  Plug 'preservim/nerdcommenter'                            " nerd commenter
  Plug 'tmhedberg/SimpylFold'                               " SimpylFold

" Code syntax highlight
  Plug 'jackguo380/vim-lsp-cxx-highlight'
  Plug 'sheerun/vim-polyglot'

  set encoding=UTF-8

call plug#end()


" theme
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


" Press Tab to confirm
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"


set completeopt-=preview " For No Previews


" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor