--[[
-- ██╗      █████╗ ███╗   ██╗ ██████╗
-- ██║     ██╔══██╗████╗  ██║██╔════╝
-- ██║     ███████║██╔██╗ ██║██║  ███╗
-- ██║     ██╔══██║██║╚██╗██║██║   ██║
-- ███████╗██║  ██║██║ ╚████║╚██████╔╝
-- ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝
]]--

-- Lang utilities
-- Collection of "useful" languages, treesitter

local lang = {
    languages = {
        -- List of tree-sitter packages
        -- TODO: gonna need more than this boss
        { "lua", "vim", "vimdoc", "c", "java" },
    },
    mason_languages = {
        -- List of Mason lsp packages
        -- TODO: add mason languages, this will constantly grow
        "lua_ls", "clangd", "jdtls", "jsonls", "lemminx", "sqlls" 
    },

    optional_languages = {
        -- Optional tree-sitter packages
        -- TODO: add optional languages
    },
}

return lang
