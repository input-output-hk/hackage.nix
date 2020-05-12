{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chart-unit"; version = "0.5.5.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."SVGFonts" or (errorHandler.buildDepError "SVGFonts"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."numhask-range" or (errorHandler.buildDepError "numhask-range"))
          (hsPkgs."palette" or (errorHandler.buildDepError "palette"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          ];
        buildable = true;
        };
      exes = {
        "chart-source-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."chart-unit" or (errorHandler.buildDepError "chart-unit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mwc-probability" or (errorHandler.buildDepError "mwc-probability"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."tdigest" or (errorHandler.buildDepError "tdigest"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."chart-unit" or (errorHandler.buildDepError "chart-unit"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            ];
          buildable = true;
          };
        };
      };
    }