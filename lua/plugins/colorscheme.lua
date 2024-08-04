return {
  -- add colorscheme
  {
    "folke/tokyonight.nvim",
    lazy = true,
    enabled = true,
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
    enabled = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  {
    "oxfist/night-owl.nvim",
    lazy = true,
    enabled = true,
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
    enabled = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
    },
  },
  {
    "marko-cerovac/material.nvim",
    lazy = true,
    enabled = true,
    priority = 1000,
    config = function()
      vim.g.material_style = "deep ocean"
      require("material").setup({
        disable = {
          background = true,
        },
        lualine_style = "stealth",
      })
    end,
  },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    enabled = false,
    lazy = false,
    priority = 1000,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    enabled = true,
    priority = 1000,
    opts = {
      -- transparent = true,
      terminalColors = false,
      theme = "lotus", -- Load "wave" theme when 'background' option is not set
    },
  },
  {
    "shaunsingh/moonlight.nvim",
    lazy = true,
    enabled = false,
    priority = 1000,
  },
  {
    "thedenisnikulin/vim-cyberpunk",
    lazy = true,
    enabled = false,
    priority = 1000,
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = true,
    enabled = false,
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
    lazy = true,
    enabled = false,
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
    "polirritmico/monokai-nightasty.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    opts = {
      dark_style_background = "dark", -- default, dark, transparent, #color
      light_style_background = "default", -- default, dark, transparent, #color
      -- Style to be applied to different syntax groups. See `:help nvim_set_hl`
      hl_styles = {
        keywords = { italic = true },
        comments = { italic = true },
      },
    },
    config = function(_, opts)
      require("monokai-nightasty").setup(opts)
      require("which-key").add({
        -- momokai-nightasty
        {
          "<leader>tt",
          "<Cmd>MonokaiToggleLight<CR>",
          desc = "Monokai-Nightasty: Toggle dark/light theme.",
          hidden = true,
        },
      })
    end,
  },
  {
    "tiagovla/tokyodark.nvim",
    lazy = true,
    enabled = false,
    priority = 1000,
    opts = {
      -- custom options here
      -- transparent_background = true,
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
    enabled = false,
    priority = 1000,
    config = function()
      require("ayu").setup({
        mirage = false,
        terminal = false,
        -- overrides = {
        --   Normal = { bg = "None" },
        --   ColorColumn = { bg = "None" },
        --   SignColumn = { bg = "None" },
        --   Folded = { bg = "None" },
        --   FoldColumn = { bg = "None" },
        --   CursorLine = { bg = "None" },
        --   CursorColumn = { bg = "None" },
        --   WhichKeyFloat = { bg = "None" },
        --   VertSplit = { bg = "None" },
        -- },
      })
    end,
  },
  {
    "diegoulloao/neofusion.nvim",
    lazy = true,
    enabled = false,
    priority = 1000,
    config = true,
    opts = { transparent_mode = true },
  },
  {
    "cvigilv/patana.nvim",
    lazy = true,
    enabled = false,
    priority = 1000,
    config = function() end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    enabled = true,
    opts = {
      enable = {
        terminal = true,
      },
      styles = {
        transparency = false,
      },
    },
  },
  {
    "0xstepit/flow.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      fluo_color = "pink",
      mode = "desaturate",
      aggressive_spell = false,
    },
  },
  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "kanagawa",
      -- colorscheme = "night-owl",
      -- colorscheme = "tokyonight",
      -- colorscheme = "solarized-osaka",
      -- colorscheme = "catppuccin",
      -- colorscheme = "material",
      -- colorscheme = "moonfly",
      -- colorscheme = "moonlight",
      -- colorscheme = "cyberpunk",
      -- colorscheme = "cyberdream",
      -- colorscheme = "monokai-pro",
      -- colorscheme = "tokyodark",
      -- colorscheme = "ayu",
      -- colorscheme = "neofusion",
      -- colorscheme = "patana",
      -- colorscheme = "monokai-nightasty",
      colorscheme = "rose-pine",
      -- colorscheme = "flow",
    },
  },
}
