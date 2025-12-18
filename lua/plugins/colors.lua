return {
    -- rose-pine plugin
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                variant = "main",
                dark_variant = "main",
                disable_background = false,
                --[[
                palette = {
                    -- Override the builtin palette per variant
                    main = {
                        base = '#2f2f2f',
                    },
                },
                --]]
                highlight_groups = {
                    -- Change background to dark grey
                    Normal = { bg = '#1a1a1a', fg = '#ffffff' },
                    NormalFloat = { bg = '#1a1a1a', fg = '#ffffff' },
                    -- Update other UI elements to match
                    CursorLine = { bg = '#252525' },
                    StatusLine = { bg = '#1a1a1a' },
                    LineNr = { bg = '#1a1a1a', fg = '#5a5a5a' },
                    SignColumn = { bg = '#1a1a1a' },
                    -- Keep rose-pine accent colors but with grey base
                    -- (you can still use 'rose', 'pine', 'foam' etc. for syntax)
                    Delimiter = { fg = 'subtle' },
                },
                styles = {
                    italic = false,
                    transparency = false,
                },

            })
            vim.cmd("colorscheme rose-pine")
        end
    },
}
