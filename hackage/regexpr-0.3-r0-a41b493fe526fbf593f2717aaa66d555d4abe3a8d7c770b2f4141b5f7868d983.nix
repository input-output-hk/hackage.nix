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
      specVersion = "0";
      identifier = { name = "regexpr"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "PAF01143@nifty.ne.jp";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "http://homepage3.nifty.com/salamander/regexpr";
      url = "";
      synopsis = "regular expression like Perl/Ruby in Haskell";
      description = "Regular expression library like Perl and Ruby's regular expressions.\nThis package has a module RegexPR.\nAnd RegexPR export functions matchRegexPR and gsubRegexPR.\n\n> hoge matchRegexPR :: String -> Maybe ((String, (String, String)), [(Int, String)])\n> gmatchRegexPR :: String -> [((String, (String, String)), [(Int, String)])]\n> subRegexPR :: String -> String -> String\n> gsubRegexPR :: String -> String -> String\n> splitRegexPR :: String -> String -> [String]\n\nExamples\n\n> matchRegexPR \"ab(cde)f\\\\1\" \"kkkabcdefcdefgh\" =>\n>              Just ((\"abcdefcde\", (\"kkk\", \"fgh\")),[(1,\"cde\")])\n> matchRegexPR \"(?<=hij)abc\" \"kkkabchijabcde\" =>\n>              Just ((\"abc\",(\"kkkabchij\",\"de\")),[])\n> gsubRegexPR \"\\\\G(\\\\d\\\\d\\\\d)\" \"\\\\1,\" \"123456 789\" => \"123,456, 789\"\n> subRegexPR \"(?<=(.)(.)(.))e\" \" \\\\3\\\\2\\\\1 \" \"abcdefg\" => \"abcd dcb fg\"\n> gsubRegexPR \"(?ixm)  aBc  . # comment \\n\\n\" \"abc!\" \"abc\\nABCDAbcAbc\" =>\n>             \"abc!abc!abc!bc\"\n> gmatchRegexPR \"(?=(?<!(?!abc)))abc\" \"abcdefdefabc\" =>\n>              [((\"abc\", (\"\", \"defdefabc\")), []), ((\"abc\", (\"defdef\", \"\")), [])]\n> splitRegexPR \"\\\\s*,\\\\s*\" \"a,b ,c\\t ,d , e\" => [\"a\",\"b\",\"c\",\"d\",\"e\"]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."mtlparse" or (buildDepError "mtlparse"))
          ];
        };
      };
    }