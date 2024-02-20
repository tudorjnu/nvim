return {
  {
    "mbbill/undotree",
    keys = { { "<F5>", vim.cmd.UndotreeToggle, desc = "Toggle UndoTree" } },
  },
  { "tpope/vim-fugitive" },
  { "tpope/vim-rhubarb" },
  { "tpope/vim-sleuth" },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  -- better surround options
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },
  -- Lua
  {
    "folke/zen-mode.nvim",
    opts = {
      backdrop = 1,
      window = {
        options = {
          -- signcolumn = "no", -- disable signcolumn
          number = false, -- disable number column
          relativenumber = false, -- disable relative numbers
          -- cursorline = false, -- disable cursorline
          cursorcolumn = false, -- disable cursor column
          -- foldcolumn = "0", -- disable fold column
          -- list = false, -- disable whitespace characters
        },
      },
      plugins = {
        twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
        gitsigns = { enabled = false }, -- disables git signs
        tmux = { enabled = true }, -- disables the tmux statusline
      },
    },
    keys = {
      { "<leader>uz", "<cmd>ZenMode<CR>", desc = "Zen Mode" },
    },
  },
  {
    "Wansmer/treesj",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({})
    end,
    keys = { { "<leader>cj", "<cmd>TSJToggle<CR>", desc = "Toggle array splitting" } },
  },
  {
    "echasnovski/mini.animate",
    opts = function()
      local animate = require("mini.animate")
      return {
        cursor = { enable = false },
        scroll = {
          enable = true,
          timing = animate.gen_timing.linear({ duration = 50, unit = "total" }),
        },
        resize = { enable = false },
        open = { enable = false },
        close = { enable = false },
      }
    end,
  },
  { "kkoomen/vim-doge", build = ":call doge#install()" },
  {
    "uga-rosa/ccc.nvim",
    config = function()
      require("ccc").setup({
        highlighter = {
          autoenable = true,
          lsp = true,
        },
      })
    end,
    keys = { { "<leader>th", "<cmd>CccHighlighterToggle<cr>", desc = "Toggle CCC" } },
  },
  {
    "folke/twilight.nvim",
    keys = { { "<leader>tt", "<cmd>Twilight<cr>", desc = "Toggle Twilight" } },
    desc = "Toggle Twilight",
  },
}
