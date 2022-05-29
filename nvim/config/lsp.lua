-- Automatically install language servers
require("nvim-lsp-installer").setup {
  automatic_installation = true
}

-- Imports
local lspconfig = require('lspconfig')

-- Configure autocompletion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Define language servers configurations
local servers = {
  tsserver = {},
  eslint = {},
  tailwindcss = {},

  sumneko_lua = {
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
        },
        diagnostics = {
          globals = { 'vim' },
        },
      },
    },
  },
}

-- Perform actual language servers configuration
for lang, lsp in pairs(servers) do
  lsp.capabilities = capabilities
  lspconfig[lang].setup(lsp)
end

