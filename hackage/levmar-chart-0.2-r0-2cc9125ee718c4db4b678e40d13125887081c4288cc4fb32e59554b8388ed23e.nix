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
    flags = { example = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "levmar-chart"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Roel van Dijk & Bas van Dijk";
      maintainer = "vandijk.roel@gmail.com, v.dijk.bas@gmail.com";
      author = "Roel van Dijk & Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "Plots the results of the Levenberg-Marquardt algorithm in a chart";
      description = "This package contains a few functions to quicky visualize the\nfitting of a model function on some data with the\nLevenberg-Marquardt algorithm.\n\nPlots can either be shown in a window or written to a file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."levmar" or (errorHandler.buildDepError "levmar"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
            (hsPkgs."levmar" or (errorHandler.buildDepError "levmar"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }