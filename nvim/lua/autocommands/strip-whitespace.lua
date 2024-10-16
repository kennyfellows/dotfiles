-- Function to strip trailing whitespace
local function strip_trailing_whitespace()
  -- Save the cursor position
  local cursor_pos = vim.fn.getpos('.')
  -- Remove trailing whitespace
  vim.cmd([[%s/\s\+$//e]])
  -- Restore the cursor position
  vim.fn.setpos('.', cursor_pos)
end

-- Create an autocommand group
local augroup = vim.api.nvim_create_augroup("StripTrailingWhitespace", { clear = true })

-- Create an autocommand to run the function before saving
vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  pattern = "*",
  callback = strip_trailing_whitespace,
})
