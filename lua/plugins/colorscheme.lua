return {
  -- add colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      terminal_colors = false,
    },
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "oxfist/night-owl.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent_background = true,
      bold = true,
      italics = true,
      underline = true,
      undercurl = true,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
  },
  {
    "marko-cerovac/material.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      disable = {
        background = true,
      },
    },
  },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "shaunsingh/moonlight.nvim",
    lazy = true,
    priority = 1000,
  },
  {
    "thedenisnikulin/vim-cyberpunk",
    lazy = true,
    priority = 1000,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        -- Recommended - see "Configuring" below for more config options
        transparent = true,
        italic_comments = true,
        hide_fillchars = true,
        borderless_telescope = true,
        terminal_colors = false,
      })
    end,
  },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({
        transparent_background = true,
        terminal_colors = false,
        filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
        -- Enable this will disable filter option
        day_night = {
          enable = true, -- turn off by default
          day_filter = "machine", -- classic | octagon | pro | machine | ristretto | spectrum
          night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
        },
        overridePalette = function(filter)
          return {
            dimmed3 = "#b3b3b3", -- change color of comments
          }
        end,
      })
    end,
  },
  {
    "tiagovla/tokyodark.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      -- custom options here
      transparent_background = true,
      terminal_colors = false,
    },
    config = function(_, opts)
      require("tokyodark").setup(opts) -- calling setup is optional
      vim.cmd([[colorscheme tokyodark]])
    end,
  },
  {
    "Shatur/neovim-ayu",
    lazy = true,
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = false,
        terminal = false,
        overrides = {
          Normal = { bg = "None" },
          ColorColumn = { bg = "None" },
          SignColumn = { bg = "None" },
          Folded = { bg = "None" },
          FoldColumn = { bg = "None" },
          CursorLine = { bg = "None" },
          CursorColumn = { bg = "None" },
          WhichKeyFloat = { bg = "None" },
          VertSplit = { bg = "None" },
        },
      })
    end,
  },
  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa",
      -- colorscheme = "night-owl",
      -- colorscheme = "tokyonight",
      -- colorscheme = "solarized-osaka",
      colorscheme = "catppuccin",
      -- colorscheme = "material",
      -- colorscheme = "moonfly",
      -- colorscheme = "moonlight",
      -- colorscheme = "cyberpunk",
      -- colorscheme = "cyberdream",
      -- colorscheme = "monokai-pro",
      -- colorscheme = "tokyodark",
      -- colorscheme = "ayu",
    },
  },
}
