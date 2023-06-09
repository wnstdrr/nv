--[[
-- ██████╗ ██╗███╗   ██╗██████╗ ██╗███╗   ██╗ ██████╗ ███████╗
-- ██╔══██╗██║████╗  ██║██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
-- ██████╔╝██║██╔██╗ ██║██║  ██║██║██╔██╗ ██║██║  ███╗███████╗
-- ██╔══██╗██║██║╚██╗██║██║  ██║██║██║╚██╗██║██║   ██║╚════██║
-- ██████╔╝██║██║ ╚████║██████╔╝██║██║ ╚████║╚██████╔╝███████║
-- ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝
]]--

local bmp = require("core.utilities.bindmap")
local kymp = require("core.utilities.keymap")

Spyglass = require("telescope.builtin")
SpyglassTheme = require("telescope.themes")

-- Default boolean values
bmp.fbindmap(
    { "expandtab", "ignorecase", "smartcase", "relativenumber", "ruler", "hlsearch", "incsearch", "showmatch" },
    true
)

-- Setup tabbing
bmp.fbindmap({ "tabstop", "softtabstop", "shiftwidth" }, 4)

-- Default file encoding
bmp.bindmap("encoding", "utf-8")

-- Enable mouse feature
bmp.bindmap("mouse", "nv")

-- Set cmd height
bmp.bindmap("cmdheight", 1)

-- Yank to system clipboard
bmp.bindmap("clipboard", vim.opt.clipboard._value .. "unnamedplus")

-- Refresh rate for lsp server (in millis)
bmp.bindmap("updatetime", 200)

-- Physical Keybindings
kymp.mapA({
    defaults = {
        silent = true,
    },
    {
        -- Neotree
        mode = "n",
        lhs = "<F5>",
        rhs = [[<cmd>Neotree toggle<CR>]],
        opt = {
            noremap = true
        }
    },
    {
        -- Nice references
        mode = "n",
        lhs = "<MiddleMouse>",
        rhs = [[<cmd>lua require('nice-reference').references()<CR>]],
    },
    {
        -- Fine cmd line
        mode = "n",
        lhs = "<Tab>",
        rhs = [[<cmd>FineCmdline<CR>]]
    },
    {
        -- Telescope find in files
        mode = "n",
        lhs = "1",
        rhs = [[<cmd>lua Spyglass.find_files({ no_ignore = true, prompt_title = 'Search?', preview_title = '...' })<CR>]]
    },
    {
        -- Telescope buffers
        mode = "n",
        lhs = "2",
        rhs =
        [[<cmd>lua Spyglass.buffers(SpyglassTheme.get_cursor({ no_ignore = true, prompt_title = 'Buffer?', preview_title = '...' }))<CR>]]
    },
    {
        -- Telescope live grep (ripgrep)
        mode = "n",
        lhs = "3",
        rhs = [[<cmd>lua Spyglass.live_grep({ no_ignore = true, prompt_title = 'Grepper?', preview_title = '...' })<CR>]]
    },
    {
        -- Telescope help tags
        mode = "n",
        lhs = "4",
        rhs = [[<cmd>lua Spyglass.help_tags()<CR>]]
    }
})
