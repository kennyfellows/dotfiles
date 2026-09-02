return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      git = {
        ignore = false,
      },
      filters = {
        custom = {
          "node_modules",
          "coverage",
          ".nyc_output"
        }
      },
      on_attach = function(bufnr)
        local api = require('nvim-tree.api')

        local function opts(desc)
          return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- Default mappings. Feel free to modify or remove as you wish.
        api.config.mappings.default_on_attach(bufnr)

        -- Add your custom mapping
        vim.keymap.set('n', 's', api.node.open.vertical, opts('Open: Vertical Split'))
        -- Map "s" to open a file in a vertical split
      end,
    })
  end,
}
