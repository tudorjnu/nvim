return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-buffer" }, -- Optional
      { "hrsh7th/cmp-path" }, -- Optional
      { "saadparwaiz1/cmp_luasnip" }, -- Optional
      { "hrsh7th/cmp-nvim-lua" }, -- Optional
      -- custom
      { "hrsh7th/cmp-cmdline" },
      { "prabirshrestha/vim-lsp" },
      { "hrsh7th/cmp-emoji" },
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline", keyword_length = 3 },
        }),
      })
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        -- ["<C-j>"] = cmp.mapping.confirm({ select = true }),
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        -- ["<CR>"] = cmp.config.disable,
        ["<CR>"] = cmp.mapping({
          i = function(fallback)
            if cmp.visible() and cmp.get_active_entry() then
              cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
            else
              fallback()
            end
          end,
          s = cmp.mapping.confirm({ select = true }),
          c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
        }),
      })
      opts.sources = cmp.config.sources({
        { name = "luasnip", keyword_length = 2, max_item_count = 2 },
        { name = "path" },
        { name = "copilot", max_item_count = 2 },
        { name = "nvim_lua", keyword_length = 3 },
        { name = "nvim_lsp", keyword_length = 2 },
        { name = "buffer", keyword_length = 5, max_item_count = 2 },
        { name = "emoji", keyword_length = 2 },
      })
    end,
  },
}
