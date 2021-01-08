call plug#begin('~/.vim/plugged')

" Block commenting
Plug 'preservim/nerdcommenter'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Ale
Plug 'dense-analysis/ale'

" Elixir
Plug 'elixir-editors/vim-elixir'
call plug#end()


set encoding=utf-8
let g:colors_name = "solarized"
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:rehash256 = 1
" Enables filetype detection, loads ftplugin, and loads indent
" (Not necessary on nvim and may not be necessary on vim 8.2+)
filetype plugin indent on

" show line numbers
set number

" other tab options
set noexpandtab " Make sure that every file uses real tabs, not spaces
set shiftround  " Round indent to multiple of 'shiftwidth'
set smartindent " Do smart indenting when starting a new line
set autoindent  " Copy indent from current line, over to the new line

" tabs have 4 spaces
set tabstop=4
set softtabstop=4

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4


" easily move betweens split windows
map <silent>,h <C-w>h
map <silent>,j <C-w>j
map <silent>,k <C-w>k
map <silent>,l <C-w>l

" NERDCommenter
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" Easy comment
map <silent>,c k1<leader>ci

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#ale#enabled = 1 
let g:airline_base16_improved_contrast = 1
let g:airline_solarized_dark_inactive_background = 1
let g:airline_solarized_dark_text = 1
let airline_solarized_enable_command_color = 1

" Ale
" General
"
let g:ale_lint_on_save = 1
let g:ale_set_highlights = 0
let g:ale_sign_highlight_linenrs = 1
let g:ale_disable_lsp = 0
let g:ale_cursor_detail = 0
let g:ale_completion_enabled = 1
let g:ale_warn_about_trailing_whitespace = 1
let g:ale_set_balloons = 0
let g:ale_linters = {
			\ 'elixir': ['elixir-ls', 'credo'],
			\ 'python': ['pyls', 'flake8']
			\}
let g:ale_lsp_show_message_severity = 'error'
let g:ale_fixers = {
			\ 'elixir': ['mix_format'],
			\ 'python': ['black'],
			\ }
" Python
let g:ale_python_flake8_use_global = 0
"let g:ale_python_flake8_options = '--max-line-length 100'
let g:ale_python_flake8_auto_pipenv = 1
let g:ale_python_auto_pipenv = 1
let g:ale_python_black_use_global = 0
let g:ale_python_black_change_directory = 1
let g:ale_python_black_auto_pipenv = 1
let g:ale_python_black_options = '--line-length=100'
let g:ale_python_pyls_use_global = 1
let g:ale_python_pyls_auto_pipenv = 1
let g:ale_python_pyls_config = {
      \   'pyls': {
      \     'plugins': {
      \       'pycodestyle': {
      \         'enabled': v:false
      \       },
	  \		  'flake8': {
\				'enabled': v:false
	  \		  }
      \     }
      \   },
      \ }

" Elixir
let g:ale_elixir_credo_strict = 0
let g:ale_elixir_elixir_ls_release = '/Users/80133140/projects/elixir-ls/release'
let g:ale_elixir_elixir_ls_config = {
    \   'elixirLS': {
    \     'dialyzerEnabled': v:false,
    \   },
    \ }
let g:ale_elixir_mix_options = 'mix'

" Vimdiff
hi DiffAdd      gui=none    guifg=NONE          guibg=#bada9f
hi DiffChange   gui=none    guifg=NONE          guibg=#e5d5ac
hi DiffDelete   gui=bold    guifg=#ff8080       guibg=#ffb0b0
hi DiffText     gui=none    guifg=NONE          guibg=#8cbee2

" matchit
packadd! matchit

syntax on
set swapfile
set dir=~/tmp
set t_Co=256

imap jj <Esc>
map <silent>EE :edit<Space>.<Enter>
nnoremap dt :ALEGoToDefinition<cr>
nnoremap df :ALEFix<cr>
nnoremap K :ALEHover<cr>
cmap w!! %!sudo tee > /dev/null
