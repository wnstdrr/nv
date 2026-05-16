local l = require("language.lang")
local treesitter = require("nvim-treesitter.configs")

require("mason").setup()

-- java must be set up before jdtls is enabled
local java_ok, java = pcall(require, "java")
if java_ok then
    java.setup()
end

vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            diagnostics = { globals = { 'vim' } },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            telemetry = { enable = false },
        },
    },
})

require("mason-lspconfig").setup({
    ensure_installed = l.lang.mason_languages,
    automatic_installation = true,
    handlers = {
        function(server_name)
            vim.lsp.enable(server_name)
        end,
    },
})

treesitter.setup({
    ensure_installed = l.lang.languages,
    ignore_install = l.lang.ignore_languages,
    sync_install = true,
    auto_install = true,
    highlight = { enable = true },
    additional_vim_regex_highlighting = false,
})

l.RegisterLanguages({
    json = { language = "json5", filetype = "jsonc" },
    pythonc = { language = "python", filetype = "pyc" },
})
