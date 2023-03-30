require("mason").setup()

local mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup()

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

mason_lspconfig.setup_handlers {
  function (server)
    lspconfig[server].setup {
      capabilities = capabilities
    }
  end,
  ["clangd"] = function ()
    lspconfig["clangd"].setup {
      capabilities = capabilities,
      init_options = {
        -- fallbackFlags = { "-std=c++17" }
        fallbackFlags = { "-Wno-c++17-extensions", "-Wno-c++17-compat" }
      }
    }
  end
}
