vim.opt.colorcolumn = "80"
vim.opt.autoindent = true;

vim.opt.list = true
vim.opt.listchars = {
  tab = "▸ ",
  trail = ".",
  eol = "¬"
}

vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

vim.g.mapleader = "\\"

vim.api.nvim_create_autocmd("FileType", {
  pattern = "php",
  callback = function ()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
  end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function ()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
  end
})

vim.filetype.add({
  pattern = {
    ['.*%.blade%.php'] = 'blade',
  },
})

vim.filetype.add({ extension = { templ = "templ" } })
