local api = vim.api

api.nvim_create_autocmd("ColorScheme", {
	callback = vim.schedule_wrap(function()
		-- Active/Inactive windows
		vim.cmd("highlight ActiveWindow guibg=#011826")
		vim.cmd("highlight InactiveWindow guibg=#000000")

		-- Active/Inactive winbar
		vim.cmd("hi WinBar guibg=#011826")
		vim.cmd("hi WinBarNC guibg=#000000")

		-- Neo Tree
		vim.cmd("highlight NeoTreeTabActive guifg=#1affff guibg=#011826")
		vim.cmd("hi NeoTreeWinSeparator guifg=#011826 guibg=#011826")
		vim.cmd("hi NeoTreeGitStaged guifg=#1aff94")

		-- Symbols Outline
		vim.cmd("hi FocusedSymbol guifg=#1affff guibg=#00363C")

		-- SpellBad
		vim.cmd("hi SpellBad gui=underline guisp=#FFC777")

		-- Buffer line ?
		vim.cmd("highlight BufferTabpageFill guibg=#000000")
		vim.cmd("highlight BufferCurrent guifg=#1AFFFF guibg=#00363C")
		vim.cmd("highlight BufferVisible  guibg=#011826")
		vim.cmd("highlight BufferInactive guibg=#011826")
		vim.cmd("highlight BufferCurrentSign guibg=#000000")
		vim.cmd("highlight BufferVisibleSign guibg=#000000")
		vim.cmd("highlight BufferInactiveSign guibg=#000000")

		-- Wilder Command Line
		vim.cmd("hi WilderPrompt guifg=#FFFFFF")
		vim.cmd("hi WilderBorder guifg=#1affff")
		vim.cmd("hi WilderDefault guifg=#80A0FF")
		vim.cmd("hi WilderSelected guifg=#1affff guibg=#244C58")

		-- General UI
		vim.cmd("hi EndOfBuffer guifg=#011826")
		vim.cmd("hi MsgSeparator guibg=#000000")
		vim.cmd("hi Pmenu guibg=#000000")
		vim.cmd("hi PmenuSel guifg=#1affff guibg=#244C58")
		vim.cmd("hi PmenuSbar guibg=#000000")
		vim.cmd("hi PmenuThumb guibg=#174B6B")

	end),
	group = vim.api.nvim_create_augroup('foo', {})
})

-- Define the autocommands
-- ocal autocmds = {
--  -- Autocommand for entering a window
--  {
--    event = "WinEnter",
--    pattern = "*",
--    action = function()
--      api.nvim_win_set_option(0, "cursorline", true)
--    end,
--  },
--  -- Autocommand for exiting a window
--  {
--    event = "WinLeave",
--    pattern = "*",
--    action = function()
--      api.nvim_win_set_option(0, "cursorline", false)
--    end,
--  },
--  -- Autocommand for entering a buffer
--  {
--    event = "BufEnter",
--    pattern = "*",
--    action = function()
--      api.nvim_buf_set_option(0, "cursorline", true)
--    end,
--  },
--  -- Autocommand for exiting a buffer
--  {
--    event = "BufLeave",
--    pattern = "*",
--    action = function()
--      api.nvim_buf_set_option(0, "cursorline", false)
--    end,
--  },
-- 

-- Wrap the autocommand actions in a callback using vim.schedule_wrap
-- for _, autocmd in ipairs(autocmds) do
--  autocmd.action = vim.schedule_wrap(autocmd.action)
-- end

-- Create the autocommands using vim.api.nvim_create_autocmd
-- for _, autocmd in ipairs(autocmds) do
--  api.nvim_create_autocmd(autocmd)
-- end

vim.cmd([[
  augroup GoIndent
    autocmd!
    autocmd FileType go setlocal shiftwidth=4 tabstop=4
  augroup END
]])

vim.cmd([[
	augroup FileTypeSpell
		autocmd!
		autocmd FileType Outline setlocal nospell
	augroup END
]])

-- TODO: Figure out how to not apply this during telescope find file

local options = {
	backup = false, -- creates a backup file
	clipboard = "unnamedplus", -- allows neovim to access the system clipboard
	cmdheight = 1, -- more space in the neovim command line for displaying messages
	completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	conceallevel = 0, -- so that `` is visible in markdown files
	fileencoding = "utf-8", -- the encoding written to a file
	hlsearch = false, -- highlight all matches on previous search pattern
	ignorecase = true, -- ignore case in search patterns
	mouse = "a", -- allow the mouse to be used in neovim
	pumheight = 10, -- pop up menu height
	showmode = false, -- we don't need to see things like -- INSERT -- anymore
	showtabline = 2, -- always show tabs
	smartcase = true, -- smart case
	smartindent = true, -- make indenting smarter again
	splitbelow = true, -- force all horizontal splits to go below current window
	splitright = true, -- force all vertical splits to go to the right of current window
	swapfile = false, -- creates a swapfile
	termguicolors = true, -- set term gui colors (most terminals support this)
	timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
	undofile = true, -- enable persistent undo
	updatetime = 300, -- faster completion (4000ms default)
	writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	expandtab = true, -- convert tabs to spaces
	shiftwidth = 2, -- the number of spaces inserted for each indentation
	tabstop = 2, -- insert 2 spaces for a tab
	cursorline = true, -- highlight the current line
	number = true, -- set numbered lines
	relativenumber = true, -- set relative numbered lines
	numberwidth = 4, -- set number column width to 2 {default 4}
	signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
	wrap = true, -- display lines as one long line
	scrolloff = 8, -- is one of my fav
	sidescrolloff = 8,
	guifont = "monospace:h17", -- the font used in graphical neovim applications
	spell = true,
	spellsuggest = "10",
	laststatus = 3, -- COME BACK TO THIS FOR ALPHA
	breakindent = true,
	breakindentopt = "shift:2,min:40,sbr",
	winhighlight = "Normal:ActiveWindow,NormalNC:InactiveWindow,FloatBorder:TransparentBg",
}

vim.opt.shortmess:append("c")

for k, v in pairs(options) do
	vim.opt[k] = v
end
