local status_ok, luasnip = pcall(require, "luasnip")
if not status_ok then
  return
end

-- Rust snippets
luasnip.add_snippets("rust", {
  luasnip.parser.parse_snippet(
    "fncls",
    "fn ${1:name}(&self) -> ${2:RetType} {\n\t${3:unimplemented!();}\n}"
  ),
})
