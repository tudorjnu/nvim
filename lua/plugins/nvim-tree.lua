return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup()
  end,
  opts = {},
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" },
  },
}
