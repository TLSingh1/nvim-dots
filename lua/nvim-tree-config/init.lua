local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
	return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- copy default mappings here from defaults in next section
	-- vim.keymap.set("n", "<C-]>", api.tree.change_root_to_node, opts("CD"))
	-- vim.keymap.set("n", "<C-e>", api.node.open.replace_tree_buffer, opts("Open: In Place"))
	---
	-- OR use all default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- remove a default
	-- vim.keymap.del("n", "<C-]>", { buffer = bufnr })

	-- override a default
	-- vim.keymap.set("n", "<C-e>", api.tree.reload, opts("Refresh"))

	-- add your mappings
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
	---
end

nvim_tree.setup({
  hijack_cursor = true,
	sync_root_with_cwd = true,
  on_attach = my_on_attach,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	filters = {
		dotfiles = false,
	},
	renderer = {
		root_folder_label = false,
    indent_markers = {
      enable = true,
    },
		icons = {
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					arrow_open = "",
					arrow_closed = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					untracked = "",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	view = {
		width = 20,
		side = "left",
		-- mappings = {
		--   list = {
		--     { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
		--     { key = "h", cb = tree_cb "close_node" },
		--     { key = "v", cb = tree_cb "vsplit" },
		--   },
		-- },
	},
})
