local colorscheme = "duskfox"
local is_transparent = true

require('tokyonight').setup({
    transparent = is_transparent,
})

require('kanagawa').setup({
    transparent = is_transparent,
})

require('github-theme').setup({
    options = {
        transparent = is_transparent,
    },
})

require('gruvbox').setup({
    transparent_mode = is_transparent,
})

require('onedark').setup({
    style = 'dark',
    transparent = is_transparent,
})

require('rose-pine').setup({
    variant = 'moon',
    -- dim_nc_background = true,
    disable_background = true,
    disable_float_background = true,
    disable_italics = true,
})

require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    transparent_background = is_transparent,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = true,
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        indent_blankline = {
            enabled = true,
            colored_indent_levels = false,
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

require('nightfox').setup({
    options = {
        -- Compiled file's destination location
        transparent = is_transparent, -- Disable setting background
        terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    },
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end
