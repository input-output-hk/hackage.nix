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
      identifier = { name = "tropical-geometry"; version = "0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Fernando Zhapa";
      author = "Fernando Zhapa";
      homepage = "https://github.com/ferynando7/tropical-geometry#readme";
      url = "";
      synopsis = "A Tropical Geometry package for Haskell";
      description = "This package includes Tropical algebra and geometry stuff such as tropical numbers, tropical matrices, and tropical polynomials. Also you can find here an algorithm to compute tropical hypersurfaces for polynomials in two variables.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."algebra" or (buildDepError "algebra"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."gloss" or (buildDepError "gloss"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."matrix" or (buildDepError "matrix"))
          (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
          (hsPkgs."semiring-simple" or (buildDepError "semiring-simple"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."sized" or (buildDepError "sized"))
          (hsPkgs."type-natural" or (buildDepError "type-natural"))
          ];
        buildable = true;
        };
      exes = {
        "tropical-geometry" = {
          depends = [
            (hsPkgs."tropical-geometry" or (buildDepError "tropical-geometry"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tropical-geometry-test-suite" = {
          depends = [
            (hsPkgs."tropical-geometry" or (buildDepError "tropical-geometry"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hlint-test" or (buildDepError "hlint-test"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "tropical-geometry-benchmarks" = {
          depends = [
            (hsPkgs."tropical-geometry" or (buildDepError "tropical-geometry"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }