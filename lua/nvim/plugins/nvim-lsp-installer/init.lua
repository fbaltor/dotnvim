local lsp_installer_servers = require 'nvim-lsp-installer.servers'

local servers = {
    'bashls',
    'cssls',
    'dockerls',
    'eslint',
    'graphql',
    'html',
    'jsonls',
    'jdtls',
    'sumneko_lua',
    'pyright',
    'rust_analyzer',
    'tsserver',
    'volar',
}

for _, server in ipairs(servers) do
    local ok, language_server = lsp_installer_servers.get_server(server)

    if ok then
        if not language_server:is_installed() then
            language_server:install()
        end
    end
end