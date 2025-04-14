-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")

-- EXAMPLE
local servers = { "html", "cssls", "pyright", "ts_ls", "tailwindcss", "ruff", "eslint", "jsonls", "phpactor" }
local nvlsp = require("nvchad.configs.lspconfig")

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = nvlsp.on_attach,
		on_init = nvlsp.on_init,
		capabilities = nvlsp.capabilities,
	})
end

-- configuring single server, example: typescript
lspconfig.astro.setup({
	on_attach = nvlsp.on_attach,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
	init_options = {
		typescript = {},
	},
})

lspconfig.phpactor.setup({
	root_dir = function(_)
		return vim.loop.cwd()
	end,
	init_options = {
		["language_server.diagnostics_on_update"] = false,
		["language_server.diagnostics_on_open"] = false,
		["language_server.diagnostics_on_save"] = false,
		["language_server_phpstan.enabled"] = false,
		["language_server_psalm.enabled"] = false,
	},
})
