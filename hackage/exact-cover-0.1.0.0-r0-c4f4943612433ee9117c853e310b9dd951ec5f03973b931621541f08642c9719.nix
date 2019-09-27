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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "exact-cover"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017, Arthur Lee";
      maintainer = "me@arthur.li";
      author = "Arthur Lee";
      homepage = "https://github.com/arthurl/exact-cover";
      url = "";
      synopsis = "Efficient exact cover solver.";
      description = "Fast solver for exact set cover problems\n(<http://en.wikipedia.org/wiki/Exact_cover>) using Algorithm X as described in\nthe paper /Dancing Links/, by Donald Knuth, in\n/Millennial Perspectives in Computer Science/, P159, 2000\n(<https://arxiv.org/abs/cs/0011047>).\n\nTo get started, see the documentation for the \"Math.ExactCover\" module below.\n\nBuild examples with @cabal install -fbuildExamples@ or @stack build --flag\nexact-cover:buildExamples@. Examples include a Sudoku solver.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "sudoku" = {
          depends = [
            (hsPkgs."exact-cover" or (buildDepError "exact-cover"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."boxes" or (buildDepError "boxes"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."exact-cover" or (buildDepError "exact-cover"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }