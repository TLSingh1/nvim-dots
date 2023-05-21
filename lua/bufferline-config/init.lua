require("bufferline").setup({
	options = {
		themable = true,
		numbers = "none",
		close_command = "bdelete! %d",
		right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
		left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
		middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
		color_icons = true, -- whether or not to add the filetype icon highlights
		indicator = {
			icon = "",
			style = "icon",
		},
		buffer_close_icon = "",
		-- buffer_close_icon = '',
		modified_icon = "●",
		close_icon = "",
		-- close_icon = '',
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 18,
		max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
		tab_size = 20,
		diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
		diagnostics_update_in_insert = false,
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			if level == "error" then
				return " " .. count
			elseif level == "warning" then
				return " " .. count
			elseif level == "info" then
				return " " .. count
			elseif level == "hint" then
				return "💡" .. count
			else
				return ""
			end
		end,
		offsets = {
			{
				filetype = "neo-tree",
				text = "",
				text_align = "center",
				padding = 1,
				highlight = "ActiveWindow",
				separator = false,
			},
		},
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = true,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		separator_style = "slant", -- | "thick" | "thin" | { 'any', 'any' },
		enforce_regular_tabs = true,
	},
	highlights = {
		fill = {
			bg = "none",
		},
		background = {},
		tab = {},
		tab_selected = {},
		tab_separator = {},
		tab_separator_selected = {},
		tab_close = {},
		close_button = {},
		close_button_visible = {
			-- fg = "#fcb",
			bg = "#000000",
		},
		close_button_selected = {
			fg = "#1affff",
			bg = "#011826",
			bold = true,
		},
		buffer_visible = {
			-- fg = "#03fc62",
			bg = "#000000",
		},
		buffer_selected = {
			fg = "#1affff",
			bg = "#011826",
			bold = true,
		},
		separator_selected = {
			fg = "#000000",
			bg = "#011826",
		},
		separator_visible = {
			fg = "#000000",
			bg = "#000000",
		},
		separator = {
			fg = "#000000",
		},
		modified = {
			fg = { attribute = "fg", highlight = "none" },
		},
		modified_selected = {
			fg = { attribute = "fg", highlight = "none" },
			bg = "#011826",
		},
		modified_visible = {
			fg = "#FFFFFF",
		},
		diagnostic = {},
		diagnostic_visible = {},
		diagnostic_selected = {
			bold = true,
			italic = true,
		},
		hint = {
			fg = "#44ffdd",
			bold = true,
		},
		hint_visible = {
			fg = "#44ffdd",
			bold = true,
		},
		hint_selected = {
			fg = "#44ffdd",
			bg = "#011826",
			bold = true,
			italic = true,
		},
		hint_diagnostic = {
			fg = "#44ffdd",
		},
		hint_diagnostic_visible = {
			fg = "#44ffdd",
		},
		hint_diagnostic_selected = {
			fg = "#44ffdd",
			bg = "#011826",
			bold = true,
			italic = true,
		},
		info = {
			fg = "#e344ff",
			bold = true,
		},
		info_visible = {
			fg = "#e344ff",
			bold = true,
		},
		info_selected = {
			fg = "#e344ff",
			bg = "#011826",
			bold = true,
			italic = true,
		},
		info_diagnostic = {
			fg = "#e344ff",
		},
		info_diagnostic_visible = {
			fg = "#e344ff",
			bold = true,
		},
		info_diagnostic_selected = {
			fg = "#e344ff",
			bg = "#011826",
			bold = true,
			italic = true,
		},
		warning = {
			fg = "#ffae44",
			bold = true,
		},
		warning_visible = {
			fg = "#ffae44",
			bold = true,
		},
		warning_selected = {
			bg = "#011826",
			bold = true,
			italic = true,
		},
		warning_diagnostic = {
			fg = "#ffae44",
		},
		warning_diagnostic_visible = {
			fg = "#ffae44",
			bold = true,
		},
		warning_diagnostic_selected = {
			fg = "#ffae44",
			bg = "#011826",
			bold = true,
			italic = true,
		},
		error = {
			fg = "#FF4444",
			bold = true,
		},
		error_visible = {
			fg = "#FF4444",
			bold = true,
		},
		error_selected = {
			fg = "#FF4444",
			bg = "#011826",
			bold = true,
			italic = true,
		},
		error_diagnostic = {
			fg = "#FF4444",
		},
		error_diagnostic_visible = {
			fg = "#FF4444",
		},
		error_diagnostic_selected = {
			fg = "#FF4444",
			bg = "#011826",
			bold = true,
			italic = true,
		},
	},
})

-- local status_ok, bufferline = pcall(require, "bufferline")
-- if not status_ok then
-- 	return
-- end
--
-- bufferline.setup({
-- 	options = {
-- 		numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
-- 		close_command = "bdelete", -- can be a string | function, see "Mouse actions"
-- 		right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
-- 		left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
-- 		color_icons = true,
-- 		middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
-- 		-- NOTE: this plugin is designed with this icon in mind,
-- 		-- and so changing this is NOT recommended, this is intended
-- 		-- as an escape hatch for people who cannot bear it for whatever reason
-- 		-- indicator_icon = "",
-- 		-- indicator_icon = "▎",
-- 		indicator = {
-- 			icon = "",
-- 			style = "icon",
-- 		},
-- 		buffer_close_icon = "",
-- 		-- buffer_close_icon = '',
-- 		modified_icon = "●",
-- 		close_icon = "",
-- 		-- close_icon = '',
-- 		left_trunc_marker = "",
-- 		right_trunc_marker = "",
-- 		--- name_formatter can be used to change the buffer's label in the bufferline.
-- 		--- Please note some names can/will break the
-- 		--- bufferline so use this at your discretion knowing that it has
-- 		--- some limitations that will *NOT* be fixed.
-- 		-- name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
-- 		--   -- remove extension from markdown files for example
-- 		--   if buf.name:match('%.md') then
-- 		--     return vim.fn.fnamemodify(buf.name, ':t:r')
-- 		--   end
-- 		-- end,
-- 		max_name_length = 30,
-- 		max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
-- 		tab_size = 26,
-- 		diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
-- 		diagnostics_update_in_insert = false,
-- 		diagnostics_indicator = function(count, level, diagnostics_dict, context)
-- 			if level == "error" then
-- 				return " " .. count
-- 			elseif level == "warning" then
-- 				return " " .. count
-- 			elseif level == "info" then
-- 				return " " .. count
-- 			elseif level == "hint" then
-- 				return "💡" .. count
-- 			else
-- 				return ""
-- 			end
-- 		end,
-- 		-- NOTE: this will be called a lot so don't do any heavy processing here
-- 		-- custom_filter = function(buf_number)
-- 		--   -- filter out filetypes you don't want to see
-- 		--   if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
-- 		--     return true
-- 		--   end
-- 		--   -- filter out by buffer name
-- 		--   if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
-- 		--     return true
-- 		--   end
-- 		--   -- filter out based on arbitrary rules
-- 		--   -- e.g. filter out vim wiki buffer from tabline in your work repo
-- 		--   if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
-- 		--     return true
-- 		--   end
-- 		-- end,
-- 		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
-- 		show_buffer_icons = true,
-- 		show_buffer_close_icons = true,
-- 		show_close_icon = false,
-- 		show_tab_indicators = true,
-- 		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
-- 		-- can also be a table containing 2 custom separators
-- 		-- [focused and unfocused]. eg: { '|', '|' }
-- 		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
-- 		enforce_regular_tabs = true,
-- 		always_show_bufferline = true,
-- 		-- sort_by = 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
-- 		--   -- add custom logic
-- 		--   return buffer_a.modified > buffer_b.modified
-- 		-- end
-- 	},
-- 	highlights = {
-- 		fill = {
-- 			bg = "none",
-- 			--[[ fg = { attribute = "fg", highlight = "#ff0000" }, ]]
-- 			--[[ fg = '#011826', ]]
-- 			--[[ guifg = { attribute = "fg", highlight = "none" }, ]]
-- 			--[[ guibg = { attribute = "bg", highlight = "TabLine" }, ]]
-- 			--[[ bg = '#011826', ]]
-- 			--[[ bg = { attribute = "bg", highlight = "#011826" }, ]]
-- 		},
-- 		-- background of non active
-- 		background = {
-- 			--[[ guifg = { attribute = "fg", highlight = "TabLine" }, ]]
-- 			--[[ fg = { attribute = "fg", highlight = "none" }, ]]
-- 			--[[ fg = '#011826', ]]
-- 			--[[ guibg = { attribute = "bg", highlight = "TabLine" }, ]]
-- 			--[[ bg = { attribute = "bg", highlight = "none" }, ]]
-- 			--[[ bg = "#011826", ]]
-- 		},
-- 		buffer_selected = {
-- 			bg = "#011826",
-- 			--[[ guifg = {attribute='fg',highlight='#ff0000'}, ]]
-- 			--[[ guibg = {attribute='bg',highlight='#0000ff'}, ]]
-- 			-- gui = 'none'
-- 		},
-- 		buffer_visible = {
-- 			--[[ fg = { attribute = "fg", highlight = "none" }, ]]
-- 			--[[ bg = { attribute = "bg", highlight = "#011826" }, ]]
-- 		},
-- 		-- actual close button
-- 		close_button = {
-- 			--[[ fg = { attribute = "fg", highlight = "none" }, ]]
-- 			-- guifg = { attribute = "fg", highlight = "none" },
-- 			-- guibg = { attribute = "bg", highlight = "TabLine" },
-- 			--[[ bg = { attribute = "bg", highlight = "#011826" }, ]]
-- 			--[[ bg = "#011826", ]]
-- 		},
-- 		close_button_visible = {
-- 			--[[ fg = { attribute = "fg", highlight = "TabLine" }, ]]
-- 			--[[ bg = { attribute = "bg", highlight = "none" }, ]]
-- 			--[[ bg = "#011826", ]]
-- 		},
-- 		close_button_selected = {
-- 			--   guifg = {attribute='fg',highlight='TabLineSel'},
-- 			--   guibg ={attribute='bg',highlight='TabLineSel'}
-- 			bg = "#011826",
-- 		},
-- 		tab_selected = {
-- 			fg = { attribute = "fg", highlight = "Normal" },
-- 			bg = { attribute = "bg", highlight = "#0B2534" },
-- 		},
-- 		tab = {
-- 			bg = "#011826",
-- 			--[[ fg = { attribute = "fg", highlight = "TabLine" }, ]]
-- 			--[[ bg = { attribute = "bg", highlight = "TabLine" }, ]]
-- 		},
-- 		tab_close = {
-- 			--[[ bg = "#011826" ]]
-- 			-- guifg = {attribute='fg',highlight='LspDiagnosticsDefaultError'},
-- 			--[[ fg = { attribute = "fg", highlight = "TabLineSel" }, ]]
-- 			--[[ bg = { attribute = "bg", highlight = "Normal" }, ]]
-- 		},
-- 		modified = {
-- 			fg = { attribute = "fg", highlight = "none" },
-- 			--[[ bg = { attribute = "bg", highlight = "none" }, ]]
-- 			--[[ fg = "#FFF444", ]]
-- 			--[[ bg = "#011826", ]]
-- 		},
-- 		modified_selected = {
-- 			fg = { attribute = "fg", highlight = "none" },
-- 			--[[ bg = { attribute = "bg", highlight = "Normal" }, ]]
-- 			bg = "#011826",
-- 		},
-- 		modified_visible = {
-- 			fg = "#FFFFFF",
-- 			--[[ fg = { attribute = "fg", highlight = "none" }, ]]
-- 			--[[ bg = { attribute = "bg", highlight = "none" }, ]]
-- 			--[[ bg = "#011826", ]]
-- 		},
-- 		separator = {
-- 			-- guifg = { attribute = "bg", highlight = "TabLine" },
-- 			fg = { attribute = "bg", highlight = "none" },
-- 			-- guibg = { attribute = "bg", highlight = "TabLine" },
-- 			bg = { attribute = "bg", highlight = "#011826" },
-- 		},
-- 		separator_selected = {
-- 			fg = { attribute = "bg", highlight = "none" },
-- 			bg = { attribute = "bg", highlight = "#011826" },
-- 		},
-- 		-- separator_visible = {
-- 		--   guifg = {attribute='bg',highlight='TabLine'},
-- 		--   guibg = {attribute='bg',highlight='TabLine'}
-- 		--   },
-- 		indicator_selected = {
-- 			bg = { attribute = "bg", highlight = "#011826" },
-- 		},
-- 		diagnostic = {
-- 		},
-- 		diagnostic_visible = {
-- 		},
-- 		diagnostic_selected = {
-- 			bold = true,
-- 			italic = true,
-- 		},
-- 		hint = {
-- 			fg = "#44ffdd",
--       bold = true,
-- 		},
-- 		hint_visible = {
-- 			fg = "#44ffdd",
-- 			bold = true,
-- 		},
-- 		hint_selected = {
-- 			fg = "#44ffdd",
-- 			bg = "#011826",
-- 			bold = true,
-- 			italic = true,
-- 		},
-- 		hint_diagnostic = {
-- 			fg = "#44ffdd",
-- 		},
-- 		hint_diagnostic_visible = {
-- 			fg = "#44ffdd",
-- 		},
-- 		hint_diagnostic_selected = {
-- 			fg = "#44ffdd",
-- 			bg = "#011826",
-- 			bold = true,
-- 			italic = true,
-- 		},
-- 		info = {
--       fg = "#e344ff",
--       bold = true,
-- 		},
-- 		info_visible = {
--       fg = "#e344ff",
--       bold = true,
-- 		},
-- 		info_selected = {
--       fg = "#e344ff",
-- 			bg = "#011826",
-- 			bold = true,
-- 			italic = true,
-- 		},
-- 		info_diagnostic = {
--       fg = "#e344ff",
-- 		},
-- 		info_diagnostic_visible = {
--       fg = "#e344ff",
--       bold = true,
-- 		},
-- 		info_diagnostic_selected = {
--       fg = "#e344ff",
-- 			bg = "#011826",
-- 			bold = true,
-- 			italic = true,
-- 		},
-- 		warning = {
-- 			fg = "#ffae44",
-- 			bold = true,
-- 		},
-- 		warning_visible = {
-- 			fg = "#ffae44",
-- 			bold = true,
-- 		},
-- 		warning_selected = {
-- 			bg = "#011826",
-- 			bold = true,
-- 			italic = true,
-- 		},
-- 		warning_diagnostic = {
-- 			fg = "#ffae44",
-- 		},
-- 		warning_diagnostic_visible = {
-- 			fg = "#ffae44",
-- 			bold = true,
-- 		},
-- 		warning_diagnostic_selected = {
-- 			fg = "#ffae44",
-- 			bg = "#011826",
-- 			bold = true,
-- 			italic = true,
-- 		},
-- 		error = {
-- 			fg = "#FF4444",
-- 			bold = true,
-- 		},
-- 		error_visible = {
-- 			fg = "#FF4444",
-- 			bold = true,
-- 		},
-- 		error_selected = {
-- 			fg = "#FF4444",
-- 			bg = "#011826",
-- 			bold = true,
-- 			italic = true,
-- 		},
-- 		error_diagnostic = {
-- 			fg = "#FF4444",
-- 		},
-- 		error_diagnostic_visible = {
-- 			fg = "#FF4444",
-- 		},
-- 		error_diagnostic_selected = {
-- 			fg = "#FF4444",
-- 			bg = "#011826",
-- 			bold = true,
-- 			italic = true,
-- 		},
-- 	},
-- })
