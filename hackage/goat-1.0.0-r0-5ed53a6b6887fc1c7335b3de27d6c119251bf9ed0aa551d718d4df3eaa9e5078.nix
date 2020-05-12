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
      identifier = { name = "goat"; version = "1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2016-2017 Daniel Lovasko";
      maintainer = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      author = "Daniel Lovasko <daniel.lovasko@gmail.com>";
      homepage = "https://github.com/lovasko/goat";
      url = "";
      synopsis = "Time Series Compression";
      description = "Goat is a time series compression implementation heavily\ninfluenced by the Gorilla paper published by Facebook.\nIt provides separate compression algorithms for both time\nand value points of a time series.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."floating-bits" or (errorHandler.buildDepError "floating-bits"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      tests = {
        "goat-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."goat" or (errorHandler.buildDepError "goat"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            ];
          buildable = true;
          };
        };
      };
    }