require("jisun.plugins-setup")
require("jisun.core.options")
require("jisun.core.keymaps")
require("jisun.core.colorscheme")
require("jisun.plugins.comment")
require("jisun.plugins.nvim-tree")
require("jisun.plugins.lualine")
require("jisun.plugins.telescope")
require("jisun.plugins.nvim-cmp")
--require("jisun.plugins.lsp.mason")
require("jisun.plugins.lsp.lspsaga")
--require("jisun.plugins.lsp.lspconfig")
require("jisun.plugins.lsp.null-ls")
require("jisun.plugins.autopairs")
require("jisun.plugins.treesitter")
require("jisun.plugins.gitsigns")

-- my collection
require("lspconfig").jedi_language_server.setup({})
require("lspconfig").pyright.setup({})
require("lspconfig").java_language_server.setup({})

require("lspconfig").dockerls.setup({})

require("lspconfig").jsonls.setup({
	capabilities = capabilities,
})
require("lspconfig").yamlls.setup({})
require("lspconfig").sqlls.setup({})
