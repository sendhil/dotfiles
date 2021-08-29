set encoding=utf-8
set guifont=Fura\ Code\ Nerd\ Font:h14

set clipboard=unnamed
if has("unix") && !has("macunix")
  set clipboard=unnamedplus
endif

" Theme
set background=dark
colorscheme one
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

set ignorecase incsearch hlsearch number nocompatible
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hidden
set ruler

set listchars=tab:▸\ ,eol:¬


" Highlight on Yank - Source - https://github.com/mjlbach/defaults.nvim/blob/master/init.lua
lua << EOF

-- Highlight on yank
vim.api.nvim_exec(
  [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]],
  false
)

--Map blankline
vim.g.indent_blankline_char = '┊'
vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
vim.g.indent_blankline_char_highlight = 'LineNr'
vim.g.indent_blankline_show_trailing_blankline_indent = false

EOF

" Formats JSON
com! FormatJSON %!python -m json.tool
