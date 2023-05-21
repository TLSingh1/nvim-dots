local heirline_ok, heirline = pcall(require, "heirline")
if not heirline_ok then
	return
end

local utils = require("heirline.utils")
require("heirline-config.colors")
local conditions = require("heirline.conditions")

local ViMode = require("heirline-config.mode")
local Location = require("heirline-config.ruler")
local FileName = require("heirline-config.file")
local Diagnostics = require("heirline-config.diagnostics")
local LspActive = require("heirline-config.lsp")
local GitStatus = require("heirline-config.git-status")

local Align = { provider = "%=" }
local Space = { provider = " " }

-- ViMode = utils.surround({ "", "" }, "#000000", { ViMode })

local StatusLine = {
	{
		{ { ViMode }, { Diagnostics }, { GitStatus } },
		{ Align, hl = { bg = "#000000" } },
		{ { LspActive }, { Location.Ruler, Location.ScrollBar, Space, hl = { fg = "#1affff", bg = "#000000" } } },
	},
}

local WinBar = {
	{
    {
      condition = function ()
        return not conditions.is_active()
      end,
      utils.surround({ " ", " " }, "#000000", { hl = { fg = "#1AF0F1", force = true }, FileName }),
    },
    {
      condition = function ()
        return conditions.is_active()
      end,
      utils.surround({ "", "" }, "#00363C", { hl = { fg = "#1AF0F1", force = true }, FileName }),
    }
	},
}

-- local TabLine = require("heirline-config.tabline")

heirline.setup({
	statusline = StatusLine,
	winbar = WinBar,
  -- tabline = TabLine,
	opts = {
		disable_winbar_cb = function(args)
			return conditions.buffer_matches({
				buftype = { "nofile", "prompt", "help", "quickfix", "NvimTree", "terminal" },
				filetype = { "^git.*", "fugitive", "Trouble", "dashboard", "NvimTree", "toggleterm" },
			}, args.buf)
		end,
	},
})
