call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Raimondi/delimitMate'		"Auto skobki
Plug 'nathanaelkane/vim-indent-guides'

Plug 'davidhalter/jegi-vim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'


Plug 'navarasu/onedark.nvim'

call plug#end()
" All of your Plugins must be added before the following line
call plug#end()

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (guicolors option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:onedark_config = {
  \ 'style': 'deep',
\}

colorscheme onedark

highlight Normal ctermbg=Black
highlight NonText ctermbg=Black

syntax on
"colorscheme onedark
"set background=dark
set expandtab
set tabstop=4
set mouse=a
set clipboard+=unnamedplus
set history=1000
set undolevels=1000
set noswapfile
set number

let g:jedi#completions_command = "<C-Space>"

map <C-n> :NERDTreeToggle <CR>

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


hi IndepentGuidesOdd ctermbg=white
hi IndepentGuidesEven ctermbg=lightgrey

cnoremap w!! w !sudo tee > /dev/null %
"set nu rnu

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
"inoremap <C-Space> <C-o><a>

highlight LspCxxHlSymField guifg=#E06C75
highlight LspCxxHlSymNamespace guifg=#E06C75

" air-line
let g:airline_powerline_fonts = 1

let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:indent_guides_enable_on_vim_startup = 1   "Show tabs
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1

set ts=4 sw=4 et

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶️'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀️'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
