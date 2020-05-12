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
      identifier = { name = "plot-light"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "2017 Marco Zocca";
      maintainer = "zocca marco gmail";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/plot-light";
      url = "";
      synopsis = "A lightweight plotting library, exporting to SVG";
      description = "This library provides drawing and plotting datastructures and functions; it is aimed in particular at scientific visualization, but it also exposes its plotting primitives and a general purpose 2D geometry library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."palette" or (errorHandler.buildDepError "palette"))
          (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      exes = {
        "timeseries" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."plot-light" or (errorHandler.buildDepError "plot-light"))
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
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-time" or (errorHandler.buildDepError "attoparsec-time"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."palette" or (errorHandler.buildDepError "palette"))
            (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."plot-light" or (errorHandler.buildDepError "plot-light"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }