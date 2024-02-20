return {
  "folke/todo-comments.nvim",
  opts = {
    keywords = {
      TODO = { icon = " ", color = "info" },
      HACK = { icon = " ", color = "warning" },
      WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
      PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
      NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
      TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
    },
    colors = {
      error = { "DiagnosticError", "ErrorMsg", "#ea6962" },
      warning = { "DiagnosticWarn", "WarningMsg", "#d8a657" },
      info = { "DiagnosticInfo", "#86b482" },
      hint = { "DiagnosticHint", "#7daea3" },
      default = { "Identifier", "#ddc7a1" },
      test = { "Identifier", "#d3869b" },
    },
  },
}
