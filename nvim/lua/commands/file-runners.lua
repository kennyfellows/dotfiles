-- run the current file with node
vim.api.nvim_create_user_command('RR', function()
  vim.cmd('!node ' .. vim.fn.expand('%:p'))
end, {})

vim.api.nvim_create_user_command('PY', function()
  vim.cmd('!python ' .. vim.fn.expand('%:p'))
end, {})

vim.api.nvim_create_user_command('RRN', function()
  local filename = vim.fn.expand('%:p')
  vim.cmd('tabnew')
  vim.cmd('terminal node ' .. filename)
end, {})

vim.api.nvim_create_user_command( 'DD', function()
  vim.cmd('!node --inspect-brk ' .. vim.fn.expand('%:p'))
end, {})

vim.api.nvim_create_user_command('Lint', function()
  vim.cmd('!npx eslint ' .. vim.fn.expand('%:p'))
end, {})

vim.api.nvim_create_user_command('LintFix', function()
  vim.cmd('!npx eslint --fix ' .. vim.fn.expand('%:p'))
end, {})

function Test()
  local filename = vim.fn.expand('%:p')
  vim.cmd('tabnew')
  vim.cmd('terminal NODE_ENV=test Test=true npx mocha --file test/globals.js ' .. filename .. ' --exit')
end

vim.api.nvim_create_user_command('Test', Test, {})

function TestDebug()
  local filename = vim.fn.expand('%:p')
  vim.cmd('tabnew')
  vim.cmd('terminal NODE_ENV=test Test=true npx mocha --inspect-brk --file test/globals.js ' .. filename .. ' --exit')
end

vim.api.nvim_create_user_command('TD', TestDebug, {})
