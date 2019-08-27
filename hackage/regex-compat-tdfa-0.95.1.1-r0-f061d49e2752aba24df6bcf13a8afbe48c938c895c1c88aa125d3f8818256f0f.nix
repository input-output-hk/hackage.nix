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
    flags = { newbase = true; splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "regex-compat-tdfa"; version = "0.95.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Christopher Kuklewicz 2006\n(c) shelarcy 2012";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Christopher Kuklewicz";
      homepage = "http://darcsden.com/shelarcy/regex-compat-tdfa";
      url = "http://darcsden.com/shelarcy/regex-compat-tdfa";
      synopsis = "Unicode Support version of Text.Regex, using regex-tdfa";
      description = "One module layer over regex-tdfa to replace Text.Regex.\n\nregex-compat can't use Unicode characters correctly because\nof using regex-posix. This is not good for Unicode users.\n\nI modified regex-compat to use regex-tdfa for solving today's\nproblem.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.newbase
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."array" or (buildDepError "array"))
            ]
          else if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."regex-base" or (buildDepError "regex-base"))
              (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
              (hsPkgs."array" or (buildDepError "array"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."regex-base" or (buildDepError "regex-base"))
              (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
              ];
        };
      };
    }