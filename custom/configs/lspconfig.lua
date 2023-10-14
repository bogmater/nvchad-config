local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- lspconfig.rust_analyzer.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"rust"},
--   root_dir = lspconfig.util.root_pattern("Cargo.toml"),
--   settings = {
--     ['rust-analyzer'] = {
--       cargo = {
--         allFeatures = true
--       },
--     },
--   },
-- })

lspconfig.intelephense.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"php"},
  root_dir = lspconfig.util.root_pattern("composer.json", ".git")
})

lspconfig.volar.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "vue" },
  root_dir = lspconfig.util.root_pattern("package.json", "vue.config.js")
})
