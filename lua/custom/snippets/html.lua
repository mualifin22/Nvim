local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("all", {
  -- HTML5 skeleton
  s("html5", {
    t({ "<!DOCTYPE html>", "<html lang=\"en\">" }),
    t({ "", "<head>", "  <meta charset=\"UTF-8\">" }),
    t({ "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" }),
    t({ "  <title>" }), i(1, "Page Title"), t({ "</title>" }),
    t({ "</head>", "<body>" }),
    t({ "  " }), i(2, "Your content here..."),
    t({ "", "</body>", "</html>" }),
  }),

  -- <p> tag
  s("p", {
    t("<p>"), i(1, "Text here"), t("</p>")
  }),

  -- <div> tag
  s("div", {
    t('<div class="'), i(1, "container"), t('">'), t({ "" }),
    i(2, "Content here"),
    t({ "", "</div>" })
  }),

  -- <img> tag
  s("img", {
    t('<img src="'), i(1, "image.jpg"), t('" alt="'), i(2, "description"), t('" />')
  }),

  -- <a> tag
  s("a", {
    t('<a href="'), i(1, "https://example.com"), t('">'), i(2, "Link text"), t("</a>")
  }),

  -- <ul><li> tag
  s("ul", {
    t({ "<ul>", "  <li>" }), i(1, "Item 1"), t({ "</li>", "  <li>" }), i(2, "Item 2"),
    t({ "</li>", "</ul>" }),
  }),

  -- <script> tag
  s("script", {
    t({ "<script>", "  " }), i(1, "// your JS here"),
    t({ "", "</script>" }),
  }),
})
