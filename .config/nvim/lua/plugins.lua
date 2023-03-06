local function get_config(name)
  return string.format('require("plugins/%s")', name)
end

require("packer").startup(function()
  use "wbthomason/packer.nvim"
  use "lewis6991/impatient.nvim"
  
  -- mason
  use {
    "williamboman/mason.nvim",
    config = get_config("mason"),
    requires = {
      "williamboman/mason-lspconfig.nvim"
    }
  }

  -- theme
  use { "AlphaTechnolog/pywal.nvim", as = "pywal", config = get_config("pywal") }
  -- use { "tiagovla/tokyodark.nvim", config = get_config("tokyodark") }
  
  -- status line
  use { "nvim-lualine/lualine.nvim", config = get_config("lualine") }

  -- editing
  use "tpope/vim-repeat"
  use "tpope/vim-surround"
  use "tpope/vim-abolish"
  use "tpope/vim-sleuth"
  use "mbbill/undotree"
  use { "numToStr/Comment.nvim", config = get_config("comment") }
  -- use { "lukas-reineke/indent-blankline.nvim", config = get_config("indent-blankline") }

  -- file explorer
  use {
    "nvim-tree/nvim-tree.lua",
    config = get_config("nvim-tree"),
    requires = {
      "nvim-tree/nvim-web-devicons",
    },
    tag = "nightly"
  }
  
  -- telescope
  use {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    requires = { "nvim-lua/plenary.nvim" },
    config = get_config("telescope")
  }
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }

  -- completion
  use {
    "hrsh7th/nvim-cmp",
    config = get_config("nvim-cmp"),
    requires = {
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "onsails/lspkind-nvim"
    }
  } 
  
  -- debugging
  use { "mfussenegger/nvim-dap", config = get_config("nvim-dap") }
  
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = get_config("trouble")
  }

  -- orgmode
  use {"nvim-treesitter/nvim-treesitter"}
  use {"nvim-orgmode/orgmode", config = get_config("orgmode") }
  use {"michaelb/sniprun", run = "bash ./install.sh"}
  use "dhruvasagar/vim-table-mode"

  -- git stuff
  use "tpope/vim-fugitive"
  use "tpope/vim-rhubarb"
  use "lewis6991/gitsigns.nvim"

  -- latex / pandoc
  use { "lervag/vimtex", config = get_config("vimtex") }
  -- use "vim-pandoc/vim-pandoc"
  -- use "vim-pandoc/vim-pandoc-syntax" 
  
  -- ascii drawing
  use { "jbyuki/venn.nvim", config = get_config("venn") }
end)
