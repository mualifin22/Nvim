local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("all", {
  s("php", {
    t("<?php"), t({"", "  "}), i(1, "-- code here"), t({"", "?>"})
  }),

  s("foreach", {
    t("foreach ("), i(1, "$array"), t(" as "), i(2, "$item"), t(") {"),
    t({"", "  "}), i(3, "// code here"),
    t({"", "}"})
  }),

  s("echo", {
    t("echo "), i(1, "'Hello, World!'"), t(";")
  }),
})
