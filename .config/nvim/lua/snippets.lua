local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

cp = s(
  {
    trig = "cp",
    name = "cp",
    dscr = "cp template"
  },
  {
    t({
      "#include <bits/stdc++.h>",
      "#define all(x) x.begin(), x.end()",
      "#define pb push_back",
      "using namespace std;",
      "using ll = long long;",
      "using ii = pair<int, int>;",
      "",
      "int main() {",
      "  cin.tie(0)->sync_with_stdio(0);",
      "  ",
    }),
    i(0),
    t({
      "",
      "}",
    })
  }
)

cpm = s(
  {
    trig = "cpm",
    name = "cp multi",
    dscr = "cp template for problems with multiple testcases"
  },
  {
    t({
      "#include <bits/stdc++.h>",
      "#define all(x) x.begin(), x.end()",
      "#define pb push_back",
      "using namespace std;",
      "using ll = long long;",
      "using ii = pair<int, int>;",
      "",
      "void solve() {",
      "  "
    }),
    i(0),
    t({
      "",
      "}",
      "",
      "int main() {",
      "  cin.tie(0)->sync_with_stdio(0);",
      "  int t; cin >> t;",
      "  while (t--) solve();",
      "}"
    })
  }
)

ls.add_snippets("cpp", { cp, cpm })
