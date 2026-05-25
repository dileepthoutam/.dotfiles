function ColorMyPencils(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

function ColorMyPencilsGroovy(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {
--    {
--        "folke/tokyonight.nvim",
--        config = function()
--            require("tokyonight").setup({
--                -- your configuration comes here
--                -- or leave it empty to use the default settings style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--                transparent = false, -- Enable this to disable setting the background color
--                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--                styles = {
--                    -- Style to be applied to different syntax groups
--                    -- Value is any valid attr-list value for `:help nvim_set_hl`
--                    comments = { italic = false },
--                    keywords = { italic = false },
--                    -- Background styles. Can be "dark", "transparent" or "normal"
--                    sidebars = "dark", -- style for sidebars, see below
--                    floats = "dark", -- style for floating windows
--                },
--            })
--        end
--    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require('lualine').setup {
                  options = {
                    icons_enabled = true,
                    theme = 'auto',
                    component_separators = { left = '', right = ''},
                    section_separators = { left = '', right = ''},
                    disabled_filetypes = {
                      statusline = {},
                      winbar = {},
                    },
                    ignore_focus = {},
                    always_divide_middle = true,
                    always_show_tabline = true,
                    globalstatus = false,
                    refresh = {
                      statusline = 1000,
                      tabline = 1000,
                      winbar = 1000,
                      refresh_time = 16, -- ~60fps
                      events = {
                        'WinEnter',
                        'BufEnter',
                        'BufWritePost',
                        'SessionLoadPost',
                        'FileChangedShellPost',
                        'VimResized',
                        'Filetype',
                        'CursorMoved',
                        'CursorMovedI',
                        'ModeChanged',
                      },
                    }
                  },
                  sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'branch', 'diff', 'diagnostics'},
                    lualine_c = {'filename'},
                    lualine_x = {'encoding', 'fileformat', 'filetype'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                  },
                  inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {'filename'},
                    lualine_x = {'location'},
                    lualine_y = {},
                    lualine_z = {}
                  },
                  tabline = {},
                  winbar = {},
                  inactive_winbar = {},
                  extensions = {}
                }
        end
    },
--    {
--        "rose-pine/neovim",
--        name = "rose-pine",
--        config = function()
--            require("rose-pine").setup({
--                variant = "auto", -- auto, main, moon, or dawn
--                dark_variant = "main", -- main, moon, or dawn
--                dim_inactive_windows = false,
--                extend_background_behind_borders = true,
--                disable_background = true,
--
--                enable = {
--                    terminal = true,
--                    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
--                    migrations = true, -- Handle deprecated options automatically
--                },
--
--                styles = {
--                    bold = true,
--                    italic = false,
--                    transparency = false,
--                },
--
--                groups = {
--                    border = "muted",
--                    link = "iris",
--                    panel = "surface",
--
--                    error = "love",
--                    hint = "iris",
--                    info = "foam",
--                    note = "pine",
--                    todo = "rose",
--                    warn = "gold",
--
--                    git_add = "foam",
--                    git_change = "rose",
--                    git_delete = "love",
--                    git_dirty = "rose",
--                    git_ignore = "muted",
--                    git_merge = "iris",
--                    git_rename = "pine",
--                    git_stage = "iris",
--                    git_text = "rose",
--                    git_untracked = "subtle",
--
--                    h1 = "iris",
--                    h2 = "foam",
--                    h3 = "rose",
--                    h4 = "gold",
--                    h5 = "pine",
--                    h6 = "foam",
--                },
--
--                palette = {
--                    -- Override the builtin palette per variant
--                    -- moon = {
--                    --     base = '#18191a',
--                    --     overlay = '#363738',
--                    -- },
--                },
--
--                -- NOTE: Highlight groups are extended (merged) by default. Disable this
--                -- per group via `inherit = false`
--                highlight_groups = {
--                    -- Comment = { fg = "foam" },
--                    -- StatusLine = { fg = "love", bg = "love", blend = 15 },
--                    -- VertSplit = { fg = "muted", bg = "muted" },
--                    -- Visual = { fg = "base", bg = "text", inherit = false },
--                },
--
--                before_highlight = function(group, highlight, palette)
--                    -- Disable all undercurls
--                    -- if highlight.undercurl then
--                    --     highlight.undercurl = false
--                    -- end
--                    --
--                    -- Change palette colour
--                    -- if highlight.fg == palette.pine then
--                    --     highlight.fg = palette.foam
--                    -- end
--                end,
--            })
--
--            -- vim.cmd("colorscheme rose-pine-main")
--            -- vim.cmd("colorscheme rose-pine-moon")
--            -- vim.cmd("colorscheme rose-pine-dawn")
--                vim.cmd("colorscheme rose-pine-moon")
--
--                ColorMyPencils()
--            end
--        },
         {
             "ellisonleao/gruvbox.nvim",
             name = "gruvbox",
             config = function()
                 require("gruvbox").setup({
                   terminal_colors = true, -- add neovim terminal colors
                   undercurl = true,
                   underline = true,
                   bold = false,
                   italic = {
                     strings = false,
                     emphasis = false,
                     comments = false,
                     operators = false,
                     folds = false,
                   },
                   strikethrough = true,
                   invert_selection = false,
                   invert_signs = false,
                   invert_tabline = false,
                   inverse = true, -- invert background for search, diffs, statuslines and errors
                   contrast = "", -- can be "hard", "soft" or empty string
                   palette_overrides = {},
                   overrides = {},
                   dim_inactive = false,
                   transparent_mode = false,
                 })

                 vim.cmd("colorscheme gruvbox")

                 ColorMyPencilsGroovy()
             end
         },

}
