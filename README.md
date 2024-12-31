# Chillz.nvim

Chillz.nvim to zimny, miętowy schemat kolorów dla Neovim, inspirowany Catppuccin.

## Instalacja

### Używając Packer:
```lua
use {
  "just-spliff/chillz.nvim",
  as = "chillz",
  config = function()
    vim.cmd.colorscheme("chillz")
  end,
}
