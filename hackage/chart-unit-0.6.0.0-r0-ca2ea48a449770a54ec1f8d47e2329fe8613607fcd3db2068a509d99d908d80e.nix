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
      identifier = { name = "chart-unit"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/chart-unit#readme";
      url = "";
      synopsis = "Native haskell charts.";
      description = "\n<<https://tonyday567.github.io/other/mainExample.svg>>\n\nchart-unit is a native haskell charting library designed:\n\n- as a chart DSL and algebra\n\n- towards a minimalist look and feel\n\n- to provide a set of default values that are robust across differet data and physical chart scales\n\n- around provision of a small but core set of chart types.\n\nSee <https://tonyday567.github.io/chart-unit/index.html chart-unit> for a chart gallery.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."SVGFonts" or (buildDepError "SVGFonts"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (buildDepError "diagrams-svg"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."numhask" or (buildDepError "numhask"))
          (hsPkgs."numhask-range" or (buildDepError "numhask-range"))
          (hsPkgs."palette" or (buildDepError "palette"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."svg-builder" or (buildDepError "svg-builder"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        };
      exes = {
        "chart-unit-gallery" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."chart-unit" or (buildDepError "chart-unit"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."formatting" or (buildDepError "formatting"))
            (hsPkgs."generic-lens-labels" or (buildDepError "generic-lens-labels"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."numhask" or (buildDepError "numhask"))
            (hsPkgs."numhask-histogram" or (buildDepError "numhask-histogram"))
            (hsPkgs."numhask-range" or (buildDepError "numhask-range"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        "chart-unit-main-example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."chart-unit" or (buildDepError "chart-unit"))
            (hsPkgs."generic-lens-labels" or (buildDepError "generic-lens-labels"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."numhask" or (buildDepError "numhask"))
            (hsPkgs."numhask-range" or (buildDepError "numhask-range"))
            ];
          };
        "chart-unit-source-examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."chart-unit" or (buildDepError "chart-unit"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."generic-lens-labels" or (buildDepError "generic-lens-labels"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."numhask" or (buildDepError "numhask"))
            (hsPkgs."numhask-range" or (buildDepError "numhask-range"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."chart-unit" or (buildDepError "chart-unit"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."numhask" or (buildDepError "numhask"))
            (hsPkgs."numhask-range" or (buildDepError "numhask-range"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            ];
          };
        };
      };
    }