return {
  { "sainnhe/gruvbox-material" },
  { "LazyVim/LazyVim",         opts = { colorscheme = "gruvbox-material" } },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = {
        char = "┊",
      },
      exclude = {
        buftypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
          "nvim-tree",
          "NvimTree_1",
        },
      },
    },
  },
  {
    "echasnovski/mini.indentscope",
    version = false,
    event = { "BufReadPre", "BufNewFile" },
    opts = { symbol = "│", options = { try_as_border = true } },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
          "nvim-tree",
          "NvimTree_1",
          "undotree",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
}
