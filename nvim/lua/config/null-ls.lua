local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.isort,
	},
  diagnostic_format = "#{m} (#{s}: #{c})",
})