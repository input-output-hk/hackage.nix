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
      identifier = { name = "plot-light-examples"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Marco Zocca";
      maintainer = "zocca.marco gmail";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/plot-light-examples";
      url = "";
      synopsis = "Example binaries for plot-light";
      description = "Example binaries for plot-light";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      exes = {
        "scatter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."plot-light" or (errorHandler.buildDepError "plot-light"))
            (hsPkgs."plot-light-examples" or (errorHandler.buildDepError "plot-light-examples"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            ];
          buildable = true;
          };
        "histogram" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."plot-light" or (errorHandler.buildDepError "plot-light"))
            (hsPkgs."plot-light-examples" or (errorHandler.buildDepError "plot-light-examples"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            ];
          buildable = true;
          };
        "timeseries" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."plot-light" or (errorHandler.buildDepError "plot-light"))
            (hsPkgs."plot-light-examples" or (errorHandler.buildDepError "plot-light-examples"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-time" or (errorHandler.buildDepError "attoparsec-time"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            ];
          buildable = true;
          };
        "heatmap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."plot-light" or (errorHandler.buildDepError "plot-light"))
            (hsPkgs."plot-light-examples" or (errorHandler.buildDepError "plot-light-examples"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            ];
          buildable = true;
          };
        };
      };
    }