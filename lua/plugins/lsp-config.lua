return {
  -- 🧱 Mason (LSP installer)
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- 🔧 Mason-LSPConfig (bridge between mason & lspconfig)
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "clangd",
          "rust_analyzer",
          "gopls",
          "pyright",
          "ts_ls",
          "html",
          "cssls"
        }
      })
    end,
  },

  -- 🔌 Native LSP config
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- 🧠 Lua LSP
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      -- 💻 C/C++ LSP
      lspconfig.clangd.setup({
        capabilities = capabilities,
      })

      -- 🦀 Rust LSP
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
      })
      -- Go LSP
      lspconfig.gopls.setup({
        capabilities = capabilities,
      })
      -- Java LSP
      lspconfig.jdtls.setup({
        capabilities = capabilities,
      })
      -- Python LSP
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      -- Javascript/Typescript LSP
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      -- Html LSP
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      -- CSS LSP
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      -- 🔍 Useful keymaps
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover docs" })
      vim.keymap.set("n", "gD", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set({ "n", "v" }, "<leader>cq", vim.lsp.buf.code_action, { desc = "Code action" })

      -- 💬 Auto popup diagnostics
      vim.api.nvim_create_autocmd("CursorHold", {
        callback = function()
          vim.diagnostic.open_float(nil, { focusable = false, border = "rounded" })
        end,
      })

      -- Optional: faster CursorHold delay
      vim.o.updatetime = 300
    end,
  },
}
