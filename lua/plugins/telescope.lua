local function telescope_live_grep_open_files()
  require("telescope.builtin").live_grep({
    prompt_title = "Live Grep",
    only_sort_text = true,
    hidden = true,
    search = vim.fn.expand("%:p:h"),
  })
end
return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>s/",
        telescope_live_grep_open_files,
        desc = "Live Grep Open Files",
      },
      {
        "<leader><space>",
        function()
          require("telescope.builtin").buffers(require("telescope.themes").get_dropdown({
            winblend = 10,
            previewer = false,
          }))
        end,
        desc = "Find existing buffers",
      },
      {
        "<leader>/",
        function()
          -- You can pass additional configuration to telescope to change theme, layout, etc.
          require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
            winblend = 10,
            previewer = false,
          }))
        end,
        desc = "[/] Fuzzily search in current buffer",
      },
      {
        "<leader>fb",
        function()
          require("telescope").extensions.file_browser.file_browser()
        end,
        desc = "File Browser",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "vertical",
        layout_config = {},
        winblend = 0,
        mappings = {
          i = {
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
          },
        },
        preview = {},
      },
      pickers = {},
    },
  },
}
