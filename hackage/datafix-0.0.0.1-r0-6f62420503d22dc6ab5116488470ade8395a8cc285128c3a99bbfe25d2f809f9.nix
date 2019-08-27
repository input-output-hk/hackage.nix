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
    flags = { no-lattices = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "datafix"; version = "0.0.0.1"; };
      license = "ISC";
      copyright = "© 2017 Sebastian Graf";
      maintainer = "sgraf1337@gmail.com";
      author = "Sebastian Graf";
      homepage = "https://github.com/sgraf812/datafix";
      url = "";
      synopsis = "Fixing data-flow problems";
      description = "Fixing data-flow problems in expression trees";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-toolkit or (pkgs.buildPackages.cabal-toolkit or (buildToolDepError "cabal-toolkit")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."pomaps" or (buildDepError "pomaps"))
          ] ++ (pkgs.lib).optional (!flags.no-lattices) (hsPkgs."lattices" or (buildDepError "lattices"));
        };
      tests = {
        "tests" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."cabal-toolkit" or (buildDepError "cabal-toolkit"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."datafix" or (buildDepError "datafix"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (pkgs.lib).optional (!flags.no-lattices) (hsPkgs."lattices" or (buildDepError "lattices"))) ++ (pkgs.lib).optional (flags.no-lattices) (hsPkgs."pomaps" or (buildDepError "pomaps"));
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."datafix" or (buildDepError "datafix"))
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."cabal-toolkit" or (buildDepError "cabal-toolkit"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."datafix" or (buildDepError "datafix"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."turtle" or (buildDepError "turtle"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (pkgs.lib).optional (!flags.no-lattices) (hsPkgs."lattices" or (buildDepError "lattices"))) ++ (pkgs.lib).optional (flags.no-lattices) (hsPkgs."pomaps" or (buildDepError "pomaps"));
          };
        };
      };
    }