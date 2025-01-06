local setup = function()
  -- Autoformatting Setup
  local conform = require "conform"
  conform.setup {
    formatters_by_ft = {
      lua = { "stylua" },
      blade = { "blade-formatter" },
      ocaml = { "ml-format" },
      ocaml_mlx = { "ocamlformat_mlx" },
    },
  }

  conform.formatters.injected = {
    options = {
      ignore_errors = false,
      lang_to_formatters = {
        sql = { "sleek" },
      },
    },
  }

  vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup("custom-conform", { clear = true }),
    callback = function(args)
      require("conform").format {
        bufnr = args.buf,
        lsp_fallback = true,
        quiet = true,
      }
    end,
  })
end

setup()

return { setup = setup }