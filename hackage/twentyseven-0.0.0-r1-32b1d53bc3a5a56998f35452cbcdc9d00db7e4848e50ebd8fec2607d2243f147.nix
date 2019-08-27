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
      identifier = { name = "twentyseven"; version = "0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/lysxia/twentyseven";
      url = "";
      synopsis = "Rubik's cube solver";
      description = "Solve 3×3×3 Rubik's cubes in the fewest possible moves. Or, if you can't\nwait, get /close enough/ with the two-phase solver.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."heap" or (buildDepError "heap"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."newtype" or (buildDepError "newtype"))
          (hsPkgs."ref-fd" or (buildDepError "ref-fd"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      exes = {
        "twentyseven" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."twentyseven" or (buildDepError "twentyseven"))
            ];
          };
        };
      tests = {
        "test-twentyseven" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."cabal-test-quickcheck" or (buildDepError "cabal-test-quickcheck"))
            (hsPkgs."HUnit-Plus" or (buildDepError "HUnit-Plus"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."twentyseven" or (buildDepError "twentyseven"))
            ];
          };
        };
      };
    }