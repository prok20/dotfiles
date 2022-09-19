set termguicolors

set number
set relativenumber

" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
" set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
" set shortmess+=c

"lua require'lspconfig'.rust_analyzer.setup({})

lua require'plugins'

lua require'lsp_setup'
lua require'completion_setup'

" Have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c

set background=light
colorscheme NeoSolarized

