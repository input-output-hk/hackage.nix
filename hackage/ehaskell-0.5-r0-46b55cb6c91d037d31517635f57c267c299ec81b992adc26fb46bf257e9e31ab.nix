{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "ehaskell"; version = "0.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "PAF01143@nifty.ne.jp";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "http://homepage3.nifty.com/salamander/second/projects/ehaskell/index.xhtml";
      url = "";
      synopsis = "like eruby, ehaskell is embedded haskell.";
      description = "You can embed haskell in Text file.\nYou can use in html, haskell source, and so on.\n\n> <%%   ... %%> : <%% import Some.Module %%> <%% h = \"hello\" %%>\n> <%    ...  %> : <% ln <- getLine %>\n> <%    ... -%> ... <%- ... -%> ... <%- ... %>: <% if b then -%>Yes<%- else -%>No<%-%>\n> <%=   ...  %> : <%= \"hello\" %>\n> <%==  ...  %> : <%== getLine %>\n> <%=\$  ...  %> : <%=\$ 123 %>\n> <%==\$ ...  %> : <%==\$ getClockTime %>\n\nYou can put code at top level by \\<%% ... %%\\>.\n\nYou can put code in do-notation by \\<% ... %\\>.\n\nYou can get args by \\<% ... -%\\> ... \\<%- ... -%\\> ... \\<%- ... %\\>.\n\nIf you write \\<% func -%\\>abc\\<%- def -%\\>ghi\\<% jkl %\\>mno\\<%- pqr %\\>,\n\ntranslate in \"func (putStr \"abc\") def (putStr \"ghi\") jkl (putStr \"mno\") pqr\"\nand execute.\n\nYou can put dinamic String by \\<%== .. %\\>.\n\nAnd rests (\\<%= ... %\\>, \\<%==\$ ... %\\>, \\<%=\$ ... %\\>) are just syntax sugar.\n\n\\<%= some %\\>   == \\<%== return some %\\>\n\n\\<%==\$ some %\\> == \\<%== some \\>\\>= return . show %\\>\n\n\\<%=\$ some %\\>  == \\<%== return \$ show some %\\>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ehs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtlparse)
            (hsPkgs.yjtools)
            (hsPkgs.directory)
            (hsPkgs.regexpr)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.utf8-string)
            ];
          };
        };
      };
    }