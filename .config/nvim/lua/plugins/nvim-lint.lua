return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "biomejs", "eslint_d" },
			typescript = { "biomejs", "eslint_d" },
			javascriptreact = { "biomejs", "eslint_d" },
			typescriptreact = { "biomejs", "eslint_d" },
			svelte = { "biomejs", "eslint_d" },
		}
	end,
}
