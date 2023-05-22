-- PLUGINS
require('plugins')                                    -- Plugins

-- OPTIONS
require('options')                                    -- Options

-- TREESITTER / LSP / CMP / 
require('treesitter-config')                          -- Syntax Highlighting
require('cmp-config')                                 -- Auto Completion
require('mason-config')                               -- Enable LSP Installer **b4 LSP**
require('lsp')                                        -- Enable LSP

-- KEYMAPS
require('keymaps')                                    -- Keybinds

-- THEME
require('tokyonight-config')                          -- Tokyo Night

-- FEATURES
require("toggleterm-config")                          -- Terminal
require('alpha-config')                               -- Alpha Dashboard
-- NOTE: turn this on when you need to render images in md
-- require('hologram-config')                            -- Inline Image Renderer
require('gitsigns-config')                            -- Git Integration

-- UI / UX
require('colorful-winsep-config')                     -- Colorful Window Seperator
require('hop-config')                                 -- Hop Cursor Navigation
require('bufferline-config')                          -- Tabline
require('neo-tree-config')
require('heirline-config')                            -- heirline / statuslines
require('telescope-config')                           -- telescope
require('todo-comments-config')                       -- todo comments
require('trouble-config')                             -- Multipurpose Pop up
require('window-picker-config')                       -- Window Picker
require('nvim-surround-config')                       -- surround pairs
require('nvim-autopairs-config')                      -- auto pairs
require('nvim-ts-autotag-config')                     -- auto tags
require('comment-config')                             -- Better Comments
require('smart-splits-config')                        -- Better Buffer Control
require('project-config')                             -- Project Finder
require('indent-blankline-config')                    -- Better Indents
require('colorizer-config')                           -- Colorizer
require('presence-config')                            -- Discord Presence

vim.cmd('colorscheme tokyonight-moon')
vim.loader.enable()
