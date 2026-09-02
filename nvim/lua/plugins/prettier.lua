return {
  "prettier/vim-prettier",
  ft = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "css",
    "scss",
    "html",
    "yaml",
    "markdown",
  },
  cmd = {"Prettier", "PrettierAsync"},
  config = function()
    -- Disable autoformat on save
    vim.g['prettier#autoformat'] = 0
    vim.g['prettier#autoformat_require_pragma'] = 0
  end,
}
