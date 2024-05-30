require("godfather")

vim.api.nvim_exec(
	[[
augroup fmt
autocmd!
autocmd BufWritePre *.go,*.py undojoin | Neoformat
augroup END
]],
	false
)
