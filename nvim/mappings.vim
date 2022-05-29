"
" Key mappings
"

" Default
map <Space> <Leader>
imap jj <Esc>

" LSP
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<cr>
nnoremap <silent> <leader>. <cmd>lua vim.lsp.buf.code_action()<cr>

