local M = {}

local function get_colors()
  return {
    base00 = '#1f1f1f',
    base01 = '#333333',
    base02 = '#2e2e2e',
    base03 = '#696969',
    base04 = '#b6afaf',
    base05 = '#f3f2f2',
    base06 = '#f3f2f2',
    base07 = '#f3f2f2',
    base08 = '#fd4663',
    base09 = '#cc6666',
    base0A = '#d65c5c',
    base0B = '#e46767',
    base0C = '#e99696',
    base0D = '#ec9393',
    base0E = '#e99696',
    base0F = '#900017',
  }
end

function M.setup()
  local c = get_colors()
  require('base16-colorscheme').setup(c)

  -- Build a lualine theme straight from the same palette,
  -- bypassing lualine's "auto" base16-name detection entirely.
  local lualine_theme = {
    normal = {
      a = { bg = c.base0D, fg = c.base00, gui = 'bold' },
      b = { bg = c.base01, fg = c.base05 },
      c = { bg = c.base01, fg = c.base04 },
    },
    insert  = { a = { bg = c.base0B, fg = c.base00, gui = 'bold' } },
    visual  = { a = { bg = c.base0E, fg = c.base00, gui = 'bold' } },
    replace = { a = { bg = c.base08, fg = c.base00, gui = 'bold' } },
    inactive = {
      a = { bg = c.base01, fg = c.base03 },
      b = { bg = c.base01, fg = c.base03 },
      c = { bg = c.base01, fg = c.base03 },
    },
  }

  local ok, lualine = pcall(require, 'lualine')
  if ok then
    local cfg = lualine.get_config()
    cfg.options.theme = lualine_theme
    lualine.setup(cfg)
  end
end

-- Register a signal handler for SIGUSR1 (matugen updates)
local signal = vim.uv.new_signal()
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
