" =======================================
" Basic Neovim Configuration (init.vim)
" =======================================

" Set leader key (useful for custom mappings later)
let mapleader = " "

" --- General Settings ---
set nocompatible      " Behave like Vim, not vi
set encoding=utf-8    " Set encoding to UTF-8
set mouse=a           " Enable mouse support in all modes
set hidden            " Allow switching buffers without saving
set autoread          " Automatically re-read files if changed outside Neovim

" --- Indentation ---
set autoindent        " Copy indent from current line to new line
set smartindent       " Smarter auto-indenting for C-like languages etc.
set tabstop=2         " A tab character represents 2 spaces
set shiftwidth=2      " Number of spaces used for autoindent and '>>' '<<'
set expandtab         " Use spaces instead of tabs (highly recommended for consistency)

" --- UI & Appearance ---
set number            " Show line numbers
set relativenumber    " Show relative line numbers (very useful for motions)
set termguicolors     " Enable true color support if your terminal supports it
syntax on             " Auto syntax highlighting (already on by default in modern Vim/Neovim but explicit is fine)

" --- Searching ---
set incsearch         " Show search matches as you type
set hlsearch          " Highlight all matches for the current search pattern
set ignorecase        " Ignore case when searching
set smartcase         " Don't ignore case if search pattern contains uppercase letters

" --- Command Line ---
set wildmenu          " Enable tab completion for commands and options
set cmdheight=1       " Height of the command bar (can set higher if you prefer)
set showcmd           " Show incomplete commands in the status line

" --- Backup & Swap Files ---
set nobackup          " Do not create backup files
set nowritebackup     " Do not create backup files while editing
set noswapfile        " Do not create swap files (can be useful for large files)

" --- Scrolling ---
set scrolloff=8       " Keep 8 lines above/below cursor when scrolling

" --- Other useful options ---
set updatetime=300    " Reduce delay for CursorHold (for LSP features like diagnostics)

call plug#begin('~/.local/share/nvim/plugged')


" =======================================
" 2. PLUGIN DECLARATIONS
" =======================================

" Declare the Gruvbox color scheme plugin
Plug 'morhetz/gruvbox'


" =======================================
" 3. END PLUG BLOCK
" =======================================
call plug#end()


" =======================================
" 4. COLOR SCHEME ACTIVATION (MUST BE AFTER plug#end())
" =======================================

" Enable 24-bit true color for best color fidelity in Neovide
set termguicolors

" Set background to dark or light
set background=dark 

" Apply the color scheme
colorscheme gruvbox

set guifont=Monaco:h12
