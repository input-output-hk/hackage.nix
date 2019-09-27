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
    flags = { use_parsec = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghci-history-parser"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "phlummox2 at gmail dot com";
      author = "phlummox";
      homepage = "";
      url = "";
      synopsis = "parse output of ghci \":history\" command";
      description = "I couldn't see a simple parser for the output of the ghci @:history@\ncommand, with few dependencies, so here is one.\n\nIf Parsec is installed, this parser will use it, but if not, it will fall\nback on the parsers in \"Text.ParserCombinators.ReadP\", found in @base@.\n\nFor an example of use, see \"GHCi.History.Parse\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.use_parsec
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "ghci-history-parser-test" = {
          depends = if flags.use_parsec
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."hspec" or (buildDepError "hspec"))
              (hsPkgs."ghci-history-parser" or (buildDepError "ghci-history-parser"))
              (hsPkgs."parsec" or (buildDepError "parsec"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."hspec" or (buildDepError "hspec"))
              (hsPkgs."ghci-history-parser" or (buildDepError "ghci-history-parser"))
              ];
          buildable = true;
          };
        "ghci-history-parser-doctest" = {
          depends = if flags.use_parsec
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."hspec" or (buildDepError "hspec"))
              (hsPkgs."ghci-history-parser" or (buildDepError "ghci-history-parser"))
              (hsPkgs."parsec" or (buildDepError "parsec"))
              (hsPkgs."doctest" or (buildDepError "doctest"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."hspec" or (buildDepError "hspec"))
              (hsPkgs."ghci-history-parser" or (buildDepError "ghci-history-parser"))
              (hsPkgs."doctest" or (buildDepError "doctest"))
              ];
          buildable = true;
          };
        };
      };
    }