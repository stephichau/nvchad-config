local null_ls = require("null-ls")

local fmt_on_save = vim.api.nvim_create_augroup("LspFormatting", {})

local opts = {
  sources = {
    null_ls.builtins.formatting.gofumpt,
    null_ls.builtins.formatting.goimports_reviser,
    null_ls.builtins.formatting.golines,
  },

  on_attach = function(client, buffer)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = fmt_on_save,
        buffer = buffer,
      })

      vim.api.nvim_create_autocmd("BufWritePre", {
        group = fmt_on_save,
        buffer = buffer,
        callback = function()
          vim.lsp.buf.format({ bufnr = buffer })
        end,
      })
    end
  end,
}

return opts

