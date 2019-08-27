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
      specVersion = "1.10";
      identifier = { name = "haskell-tools-daemon"; version = "1.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Background process for Haskell-tools that editors can connect to.";
      description = "Background process for Haskell-tools that provides a way to use the tools on a\nwhole project. It also makes it possible to use the tools on the project in a\nsession, reloading modules when needed. The daemon library is independent of\nthe actual set of tools, and takes them as a parameter, so the system can be\neasily extended by creating a simple new Main module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."references" or (buildDepError "references"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."Diff" or (buildDepError "Diff"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."haskell-tools-prettyprint" or (buildDepError "haskell-tools-prettyprint"))
          (hsPkgs."haskell-tools-refactor" or (buildDepError "haskell-tools-refactor"))
          (hsPkgs."haskell-tools-builtin-refactorings" or (buildDepError "haskell-tools-builtin-refactorings"))
          (hsPkgs."fswatch" or (buildDepError "fswatch"))
          ];
        };
      exes = {
        "ht-daemon" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell-tools-daemon" or (buildDepError "haskell-tools-daemon"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskell-tools-builtin-refactorings" or (buildDepError "haskell-tools-builtin-refactorings"))
            ];
          };
        };
      tests = {
        "haskell-tools-daemon-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."haskell-tools-daemon" or (buildDepError "haskell-tools-daemon"))
            (hsPkgs."haskell-tools-builtin-refactorings" or (buildDepError "haskell-tools-builtin-refactorings"))
            ];
          };
        };
      };
    }