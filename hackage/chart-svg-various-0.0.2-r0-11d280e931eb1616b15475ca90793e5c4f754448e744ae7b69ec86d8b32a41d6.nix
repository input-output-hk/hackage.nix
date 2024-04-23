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
      specVersion = "2.4";
      identifier = { name = "chart-svg-various"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Tony Day (c) AfterTimes";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/chart-svg-various#readme";
      url = "";
      synopsis = "See readme.md";
      description = "See readme.md for description.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."box" or (errorHandler.buildDepError "box"))
          (hsPkgs."box-csv" or (errorHandler.buildDepError "box-csv"))
          (hsPkgs."box-socket" or (errorHandler.buildDepError "box-socket"))
          (hsPkgs."chart-svg" or (errorHandler.buildDepError "chart-svg"))
          (hsPkgs."concurrency" or (errorHandler.buildDepError "concurrency"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
          (hsPkgs."numhask-array" or (errorHandler.buildDepError "numhask-array"))
          (hsPkgs."numhask-space" or (errorHandler.buildDepError "numhask-space"))
          (hsPkgs."mealy" or (errorHandler.buildDepError "mealy"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."web-rep" or (errorHandler.buildDepError "web-rep"))
        ];
        buildable = true;
      };
      exes = {
        "chart-svg-various" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."chart-svg-various" or (errorHandler.buildDepError "chart-svg-various"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."numhask" or (errorHandler.buildDepError "numhask"))
            (hsPkgs."chart-svg-various" or (errorHandler.buildDepError "chart-svg-various"))
          ];
          buildable = true;
        };
      };
    };
  }