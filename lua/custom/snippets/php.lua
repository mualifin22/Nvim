local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("echo", {
    t("echo "), i(1, "'Hello World'"), t(";")
  }),
}

