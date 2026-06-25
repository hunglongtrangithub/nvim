local M = {}

local function get_colors()
  return {
    base00 = '{{colors.surface.default.hex}}',
    base01 = '{{colors.surface_container.default.hex}}',
    base02 = '{{colors.surface_container_high.default.hex}}',
    base03 = '{{colors.outline.default.hex}}',
    base04 = '{{colors.on_surface_variant.default.hex}}',
    base05 = '{{colors.on_surface.default.hex}}',
    base06 = '{{colors.on_surface.default.hex}}',
    base07 = '{{colors.on_background.default.hex}}',
    base08 = '{{colors.error.default.hex}}',
    base09 = '{{colors.tertiary.default.hex}}',
    base0A = '{{colors.secondary.default.hex}}',
    base0B = '{{colors.primary.default.hex}}',
    base0C = '{{colors.tertiary_fixed_dim.default.hex}}',
    base0D = '{{colors.primary_fixed_dim.default.hex}}',
    base0E = '{{colors.secondary_fixed_dim.default.hex}}',
    base0F = '{{colors.error_container.default.hex}}',
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
