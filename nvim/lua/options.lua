require "nvchad.options"

-- add yours here!

--local o = vim.o

--o.cursorlineopt ='both' -- to enable cursorline!

-- dont automatically save deletes to clipboard buffer
vim.opt.clipboard:remove({'unnamed', 'unnamedplus'})
-- show the full path on the status bar
vim.opt.statusline = '%F'
