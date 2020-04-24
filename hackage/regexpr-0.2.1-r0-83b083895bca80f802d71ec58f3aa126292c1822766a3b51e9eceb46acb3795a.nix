{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "regexpr"; version = "0.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "PAF01143@nifty.ne.jp";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "regular expression like Perl/Ruby in Haskell";
      description = "Regular expression library like Perl/Ruby's regular expression.\nThis package has a module RegexPR.\nAnd RegexPR export function matchRegexPR and gsubRegexPR.\nmatchRegexPR :: String -> Maybe ((String, (String, String)), [(Int, String)]),\ngsubRegexPR :: String -> String -> String.\nExamples: matchRegexPR \"ab(cde)f\\\\1\" \"kkkabcdefcdefgh\" =>\nJust ((\"abcdefcde\", (\"kkk\", \"fgh\")),[(1,\"cde\")]),\nmatchRegexPR \"(?<=hij)abc\" \"kkkabchijabcde\" =>\nJust ((\"abc\",(\"kkkabchij\",\"de\")),[]),\ngsubRegexPR \"\\\\G(\\\\d\\\\d\\\\d)\" \"\\\\1,\" \"123456 789\" => \"123,456, 789\"";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          ];
        buildable = true;
        };
      };
    }