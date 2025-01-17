local ls = require('luasnip')
local su = require('nvim.utils.lua.string')
local rep = require('luasnip.extras').rep
local fmt = require('luasnip.extras.fmt').fmt
local lua_utils = require('nvim.plugins.luasnip.snippets.lua.utils')
local SnippetManager = require('nvim.plugins.luasnip.snippet_manager')

local s = ls.s
local i = ls.insert_node
local t = ls.text_node
local c = ls.choice_node
local d = ls.dynamic_node
-- local f = ls.function_node

local tl = su.box_trim_lines
local indentation = su.get_space_str(vim.opt.softtabstop:get())

local sm = SnippetManager('lua')

sm:add_snippet(s(
    'fn',
    fmt('{}', {
        c(1, {
            fmt(
                tl([[
                    -- {} {}{}
                    local {} = function({})
                        {}{}
                    end
                ]]),
                {
                    rep(1),
                    i(4, 'does mysterious stuff'),
                    d(5, lua_utils.get_current_func_doc_comment_snip, { 2 }),
                    i(1),
                    i(2),
                    t(indentation),
                    i(3),
                }
            ),

            fmt(
                tl([[
                    function {}({})
                        {}{}
                    end
                ]]),
                { i(1), i(2), t(indent_size), i(3) }
            ),
            fmt(
                tl([[
                    -- {} {}{}
                    function {}({})
                        {}{}
                    end
                ]]),
                {
                    rep(1),
                    i(4, 'does mysterious stuff'),
                    d(5, lua_utils.get_current_func_doc_comment_snip, { 2 }),
                    i(1),
                    i(2),
                    t(indentation),
                    i(3),
                }
            ),
        }),
    })
))
