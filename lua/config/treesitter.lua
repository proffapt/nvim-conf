require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "javascript", "lua", "html", "css", "bash", "go" }, -- List of languages you want to support
  highlight = {
    enable = true,              -- Enable syntax highlighting
    additional_vim_regex_highlighting = false, -- Disable regex-based highlighting
  },
  indent = {
    enable = true               -- Enable indentation based on syntax
  },
  textobjects = {
    enable = true               -- Enable advanced text objects based on syntax
  }
}
