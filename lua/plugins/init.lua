-- return require('packer').startup(function()
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.startup({ function ()
  
  -- PACKER
	use 'wbthomason/packer.nvim'

  -- THEMES
	use 'folke/tokyonight.nvim'

  -- TREESITTER / LSP / CMP / NULL-LS / SNIPPETS / COPILOT
  use { "github/copilot.vim" }                      -- Copilot
  use {
      "neovim/nvim-lspconfig",                      -- Enable LSP
      "williamboman/mason.nvim",                    -- LSP Installer
      "williamboman/mason-lspconfig.nvim",          -- Useful APIs
  }
  use { "jose-elias-alvarez/null-ls.nvim" }         -- Null-LS
	use {                                             -- Syntax Highlighting
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    },
    run = ':TSUpdate'
  }
  use { "hrsh7th/nvim-cmp" }                        -- Completion Plugin
  use { "hrsh7th/cmp-nvim-lsp" }                    -- lsp completion
  use { "hrsh7th/cmp-buffer" }                      -- buffer completion
  use { "hrsh7th/cmp-path" }                        -- path completion
  use { "hrsh7th/cmp-cmdline" }                     -- cmdline completion
  use { "saadparwaiz1/cmp_luasnip" }                -- snippet completion
  use { "rafamadriz/friendly-snippets" }            -- snippet repo
  use { "L3MON4D3/LuaSnip" }                        -- snippet repo

  -- Features
  use { 'akinsho/toggleterm.nvim', version = "*" }  -- Terminal
  use { 'goolord/alpha-nvim' }                      -- Alpha Dashboard
  use { 'edluffy/hologram.nvim' }                   -- Image Rendering
  use { "lewis6991/gitsigns.nvim", tag = 'release' }-- Git Signs

  -- UI / UX
  use { "nvim-zh/colorful-winsep.nvim" }            -- Colorful Window Separators
  use { "simrat39/symbols-outline.nvim" }           -- Symbols Outline
  use {                                             -- hop cursor navigation
    'phaazon/hop.nvim',
    branch = 'v2'
  }
  use { 'akinsho/bufferline.nvim',                  -- buffer line
    tag = "*", requires = 'nvim-tree/nvim-web-devicons'
  }
  use { "rebelot/heirline.nvim" }                   -- status lines
  use { "windwp/nvim-autopairs" }                   -- auto pairs
  use { "windwp/nvim-ts-autotag" }                  -- auto tags
  use { "numToStr/Comment.nvim" }                   -- better comments
  use { "JoosepAlviste/nvim-ts-context-commentstring" } -- context comments
  use { "ahmedkhalf/project.nvim" }                 -- project finder
  use {                                             -- telescope
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {                                             -- todo comments
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim"
  }
  use {                                             -- trouble ui popup
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons"
  }
  use { "MunifTanjim/nui.nvim" }                    -- ui elements
  use { "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    require = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim"
    }
  }
  -- use {                                             -- file tree
  --   'nvim-tree/nvim-tree.lua',
  --   requires = {
  --     'nvim-tree/nvim-web-devicons', -- optional
  --   },
  --   config = function()
  --     require("nvim-tree").setup {}
  --   end
  -- }

  use { "s1n7ax/nvim-window-picker", tag = "v1.*" }     -- window picker
  use { "lukas-reineke/indent-blankline.nvim" }     -- better indents
  use { "norcalli/nvim-colorizer.lua" }             -- colorizer
  use { "andweeb/presence.nvim" }                   -- discord presence
  use { "kylechui/nvim-surround", tag = "*" }       -- surround pairs
  use { "mrjones2014/smart-splits.nvim" }           -- smart split control

  -- APIs
  use 'nvim-lua/plenary.nvim'                       -- Lua SDK
  
end,
config = {
    display = {
      open_fn = function()
        return require("packer.util").float({ border = "single" })
      end
    }
  }
})
