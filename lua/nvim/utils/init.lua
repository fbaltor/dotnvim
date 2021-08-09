G = {}
V = vim
API = vim.api
FN = vim.fn

Option = require('nvim.utils.option')
Variable = require('nvim.utils.variable')
Keybind = require('nvim.utils.keybind')
Command = require('nvim.utils.command')
Editor = require('nvim.utils.editor')
Pum = require('nvim.utils.pum')

Vim = {
    Option = Option,
    Variable = Variable,
    Keybind = Keybind,
    Command = Command,
    Editor = Editor,
    Pum = Pum
}
