local options = {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      ".git/",
      "dist/",
      "build/",
      -- add any other directories you want to exclude
    },
  },
}

return options
