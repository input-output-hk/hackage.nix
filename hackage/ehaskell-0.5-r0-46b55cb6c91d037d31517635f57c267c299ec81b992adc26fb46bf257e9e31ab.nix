let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtlparse" or (buildDepError "mtlparse"))
            (hsPkgs."yjtools" or (buildDepError "yjtools"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."regexpr" or (buildDepError "regexpr"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }