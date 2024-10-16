return {
  {
    "preservim/nerdcommenter",
    event = "VeryLazy",
    config = function()
      -- Set default mappings
      vim.g.NERDCreateDefaultMappings = 1
      -- Add spaces after comment delimiters by default
      vim.g.NERDSpaceDelims = 1
      -- Use compact syntax for prettified multi-line comments
      vim.g.NERDCompactSexyComs = 1
      -- Allow commenting and inverting empty lines
      vim.g.NERDCommentEmptyLines = 1
      -- Enable trimming of trailing whitespace when uncommenting
      vim.g.NERDTrimTrailingWhitespace = 1
      -- Enable NERDCommenterToggle to check all selected lines is commented or not
      vim.g.NERDToggleCheckAllLines = 1
    end,
  }
}
