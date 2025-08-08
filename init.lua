if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

require("config.lazy")

require("fzf-lua").setup({
	files = {
		prompt = "Files> ", -- Custom prompt
		cwd = ".", -- Start search in the current directory
		fd_opts = "--type f --strip-cwd-prefix", -- Remove the path prefix for cleaner results
	},
	fzf_opts = {
		["--layout"] = "default", -- Optional: use a default layout
		["--ansi"] = "", -- Ensure colorized matches (if needed)
	},
})
