local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions
local completion = null_ls.builtins.completion

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
    diagnostics.codespell.with({
      filestypes = { "lua", "typescriptreact", "rust" },
      extra_args = {
        "-L crate"
      }
    }),
    -- diagnostics.codespell.with({ filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }}),
	},
})
