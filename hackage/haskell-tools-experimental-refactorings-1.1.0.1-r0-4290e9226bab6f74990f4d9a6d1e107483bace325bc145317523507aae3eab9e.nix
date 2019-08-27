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
      identifier = {
        name = "haskell-tools-experimental-refactorings";
        version = "1.1.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nboldi@elte.hu";
      author = "Boldizsar Nemeth";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "Refactoring Tool for Haskell";
      description = "Contains experimental refactorings implemented in the Haskell-tools framework for tutorial purposes, or to be added later to the set of mature refactorings.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."references" or (buildDepError "references"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."haskell-tools-ast" or (buildDepError "haskell-tools-ast"))
          (hsPkgs."haskell-tools-backend-ghc" or (buildDepError "haskell-tools-backend-ghc"))
          (hsPkgs."haskell-tools-rewrite" or (buildDepError "haskell-tools-rewrite"))
          (hsPkgs."haskell-tools-prettyprint" or (buildDepError "haskell-tools-prettyprint"))
          (hsPkgs."haskell-tools-refactor" or (buildDepError "haskell-tools-refactor"))
          ];
        };
      tests = {
        "haskell-tools-experimental-refactorings-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."references" or (buildDepError "references"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."haskell-tools-ast" or (buildDepError "haskell-tools-ast"))
            (hsPkgs."haskell-tools-backend-ghc" or (buildDepError "haskell-tools-backend-ghc"))
            (hsPkgs."haskell-tools-rewrite" or (buildDepError "haskell-tools-rewrite"))
            (hsPkgs."haskell-tools-prettyprint" or (buildDepError "haskell-tools-prettyprint"))
            (hsPkgs."haskell-tools-refactor" or (buildDepError "haskell-tools-refactor"))
            (hsPkgs."haskell-tools-experimental-refactorings" or (buildDepError "haskell-tools-experimental-refactorings"))
            ];
          };
        };
      };
    }