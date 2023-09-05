require('mason').setup()

require('mason-lspconfig').setup_handlers {
  function(server)
    require('lspconfig')[server].setup {
      on_attach = on_attach,
      capabilities = require('cmp_nvim_lsp').default_capabilities(
        vim.lsp.protocol.make_client_capabilities()
      )
    }
    require("lspconfig").pyright.setup {
      settings = {
        python = {
          venvPath = ".",
          pythonPath = "./.venv/bin/python",
          analysis = {
            extraPaths = { "." }
          }
        }
      }
    }
  end
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  update_in_insert = false,
  virtual_text = {
    format = function(diagnostic)
      return string.format("%s (%s: %s)", diagnostic.message, diagnostic.source, diagnostic.code)
    end,
  },
})
