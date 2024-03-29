return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd",  "rust_analyzer", "pylsp"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
      })
      lspconfig.clangd.setup({
      })
      lspconfig.pylsp.setup({
      })
      lspconfig.rust_analyzer.setup({
      })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "df", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>vd", vim.lsp.buf.code_action, {})
      vim.keymap.set('n', 'fd', '<C-o>')
    end
  }
}
