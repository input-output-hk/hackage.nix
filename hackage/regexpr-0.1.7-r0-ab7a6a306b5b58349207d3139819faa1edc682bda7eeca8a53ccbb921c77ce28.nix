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
      identifier = { name = "regexpr"; version = "0.1.7"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          ];
        };
      };
    }