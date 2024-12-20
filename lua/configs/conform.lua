local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    json = { "prettierd" },
    html = { "prettierd" },
    python = { "ruff" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    astro = { "prettierd" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
