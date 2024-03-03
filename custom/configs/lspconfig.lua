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

lspconfig.gopls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      root_dir = lspconfig.util.root_pattern(".git", "go.mod"),
      flags = {
         debounce_text_changes = 150,
      },
      settings = {
         gopls = {
            gofumpt = true,
            experimentalPostfixCompletions = true,
            staticcheck = true,
            usePlaceholders = true,
         },
      },
})

lspconfig.html.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"html", "templ", "tpl", "tmpl"}
})

lspconfig.htmx.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"html", "templ", "tpl", "tmpl"}
})

lspconfig.tailwindcss.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"templ", "astro", "javascript", "typescript", "react", "tpl", "tmpl"},
  init_options = { userLanguages = { templ = "html" } },
})
