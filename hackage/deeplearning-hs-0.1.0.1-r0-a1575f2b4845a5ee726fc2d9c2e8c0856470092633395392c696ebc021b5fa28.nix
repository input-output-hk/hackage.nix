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
      identifier = { name = "deeplearning-hs"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Andrew Tulloch <andrew+cabal@tullo.ch>";
      author = "Andrew Tulloch";
      homepage = "https://github.com/ajtulloch/deeplearning-hs";
      url = "";
      synopsis = "Deep Learning in Haskell";
      description = "Implements type-safe deep neural networks";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."accelerate" or (buildDepError "accelerate"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."repa" or (buildDepError "repa"))
          (hsPkgs."repa-algorithms" or (buildDepError "repa-algorithms"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "deeplearning_demonstration" = {
          depends = [
            (hsPkgs."deeplearning-hs" or (buildDepError "deeplearning-hs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."repa-algorithms" or (buildDepError "repa-algorithms"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      tests = {
        "deeplearning_test" = {
          depends = [
            (hsPkgs."deeplearning-hs" or (buildDepError "deeplearning-hs"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."accelerate" or (buildDepError "accelerate"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."repa-algorithms" or (buildDepError "repa-algorithms"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            ];
          buildable = true;
          };
        };
      };
    }