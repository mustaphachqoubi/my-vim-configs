require("incolla").setup {
    -- Default configuration for all filetype
    defaults = {
        img_dir = "imgs",
        img_name = function()
            return os.date('%Y-%m-%d-%H-%M-%S')
        end,
        affix = "%s",
    },
    -- You can customize the behaviour for a filetype by creating a field named after the desired filetype
    -- If you're uncertain what to name your field to, you can run `lua print(vim.bo.filetype)`
    -- Missing options from `<filetype>` field will be replaced by the default configuration
    markdown = {
        affix = "![](%s)",
    }
}
