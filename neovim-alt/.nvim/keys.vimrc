let mapleader=','

" List Navigation
map <expr> <C-n> (empty(getloclist(1))  ? ":cn" : ":lnext")."\n"
map <expr> <C-p> (empty(getloclist(0))  ? ":cp" : ":lp")."\n"

map <leader>ew :NERDTreeToggle<CR>
"map <leader>ew :e %%
"map <leader>es :sp %%
"map <leader>ev :vsp %%
"map <leader>et :tabe %%

map <leader>ct :tabclose<CR>
map <leader>st :tab split<CR>

nmap \e :NERDTreeToggle<CR> "TODO: Revisit
nmap \t :TagbarToggle<CR> "TODO: Revisit

nmap T :terminal<CR> :startinsert<CR>
nnoremap <leader>ov :exe ':silent !code %'<CR>:redraw!<CR>

nmap <Leader>p :Commands<CR> "TODO: Revisit

" Man Pages
au FileType man nmap gd :Man<CR>

" Ctrl-Space
let g:CtrlSpaceDefaultMappingKey = "<C-space> "

" Telescope Shortcuts

lua << EOF

--Add leader shortcuts
vim.api.nvim_set_keymap('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sf', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>st', [[<cmd>lua require('telescope.builtin').tags()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sd', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], { noremap = true, silent = true })

EOF