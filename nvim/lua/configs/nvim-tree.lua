require('nvim-tree').setup({
  on_attach = function(bufnr)
    local api = require('nvim-tree.api')

    local function opts(desc)
      return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- Default mappings. Feel free to modify or remove as you wish.
    api.config.mappings.default_on_attach(bufnr)

    -- Add your custom mapping
    vim.keymap.set('n', 's', api.node.open.vertical, opts('Open: Vertical Split'))
    -- Map "s" to open a file in a horizontal split
  end,
})

