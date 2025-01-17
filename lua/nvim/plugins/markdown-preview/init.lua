local Variable = require('nvim.utils.nvim.variable')

Variable.g({
    mkdp_auto_start = true,
    mkdp_auto_close = true,
    mkdp_refresh_slow = false,
    mkdp_command_for_global = false,
    mkdp_open_to_the_world = false,
    mkdp_browser = 'com.github.Eloston.UngoogledChromium',
    mkdp_echo_preview_url = false,
    mkdp_preview_options = { sync_scroll_type = 'middle' },
    mkdp_filetypes = { 'markdown' },
    mkdp_port = '8197',
})
