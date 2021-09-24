local Shortcut = R 'nvim.newutil.keymap'

R'nvim-comment-frame'.setup({ disable_default_keymap = true })

Shortcut:mode('n'):options():noremap():next():keymap(
    ',C', ':lua require(\'nvim-comment-frame\').add_comment()<CR>')