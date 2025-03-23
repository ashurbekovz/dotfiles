local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local extras = require("luasnip.extras")
local rep = extras.rep

ls.add_snippets("go", {
    s("struct", {
        t("type "), i(1, "StructName"), t({" struct {", "}"}),
        t({"", "", "func New"}), rep(1), t("() *"), rep(1), t(" {"),
        t({"", "    return &"}), rep(1), t("{}"),
        t({"", "}"})
    })
})
