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
      identifier = { name = "chart-unit"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/chart-unit";
      url = "";
      synopsis = "Native haskell charts.";
      description = "See <https://tonyday567.github.io/chart-unit/index.html chart-unit> for chart bling and usage.\n\n\n<<https://tonyday567.github.io/other/examplePixels.svg>>\n\nThese charts are designed to be scale independent and amenable to combinatory busywork (hence the unit suffix).\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (buildDepError "diagrams-svg"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."numhask" or (buildDepError "numhask"))
          (hsPkgs."numhask-range" or (buildDepError "numhask-range"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      exes = {
        "chart-unit-examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."chart-unit" or (buildDepError "chart-unit"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."numhask" or (buildDepError "numhask"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."ad" or (buildDepError "ad"))
            (hsPkgs."reflection" or (buildDepError "reflection"))
            (hsPkgs."tdigest" or (buildDepError "tdigest"))
            (hsPkgs."diagrams-rasterific" or (buildDepError "diagrams-rasterific"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."chart-unit" or (buildDepError "chart-unit"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            (hsPkgs."numhask" or (buildDepError "numhask"))
            ];
          };
        };
      };
    }