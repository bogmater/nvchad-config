local M = {}

-- M.lint = {
--   plugin = true,
--   n = {
--     ["<leader>ll"] = {
--       function ()
--         require("lint").try_lint()
--       end,
--       "Lint current file"
--     },
--
--   }
-- }

-- M.formatter = {
--   plugin = true,
--   n = {
--     ["<leader>lf"] = {"<cmd> Format<CR>"}
--   }
-- }
M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle Breakpoint"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open()
      end
    }
  }
}

return M
