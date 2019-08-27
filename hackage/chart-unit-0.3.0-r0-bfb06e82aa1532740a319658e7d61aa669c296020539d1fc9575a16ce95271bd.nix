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
      identifier = { name = "chart-unit"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/chart-unit";
      url = "";
      synopsis = "A set of native haskell charts.";
      description = "See https://tonyday567.github.io/chart-unit/index.html for some description.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."diagrams" or (buildDepError "diagrams"))
          (hsPkgs."diagrams-core" or (buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (buildDepError "diagrams-svg"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."numhask" or (buildDepError "numhask"))
          (hsPkgs."numhask-range" or (buildDepError "numhask-range"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."SVGFonts" or (buildDepError "SVGFonts"))
          ];
        };
      exes = {
        "chart-unit-examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."chart-unit" or (buildDepError "chart-unit"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."diagrams" or (buildDepError "diagrams"))
            (hsPkgs."diagrams-core" or (buildDepError "diagrams-core"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-svg" or (buildDepError "diagrams-svg"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."formatting" or (buildDepError "formatting"))
            (hsPkgs."SVGFonts" or (buildDepError "SVGFonts"))
            (hsPkgs."numhask" or (buildDepError "numhask"))
            (hsPkgs."numhask-range" or (buildDepError "numhask-range"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."ad" or (buildDepError "ad"))
            (hsPkgs."ListLike" or (buildDepError "ListLike"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."tdigest" or (buildDepError "tdigest"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."chart-unit" or (buildDepError "chart-unit"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (buildDepError "tasty-smallcheck"))
            (hsPkgs."numhask" or (buildDepError "numhask"))
            (hsPkgs."numhask-range" or (buildDepError "numhask-range"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            ];
          };
        };
      };
    }