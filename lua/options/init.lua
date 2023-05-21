vim.cmd("hi TransparentBg guifg=#0d8080 guibg=#000000")

vim.api.nvim_create_autocmd('ColorScheme', {
  callback = vim.schedule_wrap(function ()
    vim.cmd("highlight ActiveWindow guibg=#011826")
    vim.cmd("highlight InactiveWindow guibg=#000000")

    vim.cmd('hi WinBar guibg=#011826 guifg=#ff44e0')
    vim.cmd('hi WinBarNC guibg=#000000 guifg=#ff44e0')

    vim.cmd("highlight NeoTreeTabActive guifg=#1affff guibg=#011826")
    vim.cmd("hi NeoTreeWinSeparator guifg=#011826 guibg=#011826")
    vim.cmd("hi NeoTreeGitStaged guifg=#1aff94")

    vim.cmd('highlight BufferTabpageFill guibg=#000000')
    vim.cmd('highlight BufferCurrent guifg=#1AFFFF guibg=#00363C')
    vim.cmd('highlight BufferVisible  guibg=#011826')
    vim.cmd('highlight BufferInactive guibg=#011826')
    vim.cmd('highlight BufferCurrentSign guibg=#000000')
    vim.cmd('highlight BufferVisibleSign guibg=#000000')
    vim.cmd('highlight BufferInactiveSign guibg=#000000')
  end),
  -- group = vim.api.nvim_create_augroup('foo', {})
})

vim.cmd([[
  augroup GoIndent
    autocmd!
    autocmd FileType go setlocal shiftwidth=4 tabstop=4
  augroup END
]])

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



  ------------------------------------------------------------------
	laststatus = 3, -- COME BACK TO THIS FOR ALPHA
  ------------------------------------------------------------------



	breakindent = true,
	breakindentopt = "shift:2,min:40,sbr",
	-- winhighlight = "Normal:TransparentBg,FloatBorder:TransparentBg,Search:TransparentBg",
	winhighlight = "Normal:ActiveWindow,NormalNC:InactiveWindow,FloatBorder:TransparentBg",
	-- winbar = "%f",
}

vim.opt.shortmess:append("c")

for k, v in pairs(options) do
	vim.opt[k] = v
end