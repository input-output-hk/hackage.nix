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
      identifier = { name = "plot-light"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 Marco Zocca";
      maintainer = "zocca marco gmail";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/plot-light";
      url = "";
      synopsis = "A lightweight plotting library, exporting to SVG";
      description = "A lightweight plotting library, exporting to SVG";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."attoparsec-time" or (errorHandler.buildDepError "attoparsec-time"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."palette" or (errorHandler.buildDepError "palette"))
          (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
          ];
        buildable = true;
        };
      exes = {
        "plot-light" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."plot-light" or (errorHandler.buildDepError "plot-light"))
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