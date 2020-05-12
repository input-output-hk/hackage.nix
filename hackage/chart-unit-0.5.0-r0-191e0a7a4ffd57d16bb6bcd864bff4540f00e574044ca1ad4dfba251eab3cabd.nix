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
      specVersion = "1.18";
      identifier = { name = "chart-unit"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/chart-unit";
      url = "";
      synopsis = "Native haskell charts.";
      description = "See <https://tonyday567.github.io/chart-unit/index.html chart-unit> for chart bling and usage.\n\n\n![example](other/mainExample.svg)\n\nThese charts are designed to be scale independent and amenable to combinatory busywork (hence the unit suffix).\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."palette" or (errorHandler.buildDepError "palette"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."numhask-range" or (errorHandler.buildDepError "numhask-range"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."SVGFonts" or (errorHandler.buildDepError "SVGFonts"))
          ];
        buildable = true;
        };
      exes = {
        "chart-source-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chart-unit" or (errorHandler.buildDepError "chart-unit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mwc-probability" or (errorHandler.buildDepError "mwc-probability"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."tdigest" or (errorHandler.buildDepError "tdigest"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."diagrams-rasterific" or (errorHandler.buildDepError "diagrams-rasterific"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chart-unit" or (errorHandler.buildDepError "chart-unit"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }