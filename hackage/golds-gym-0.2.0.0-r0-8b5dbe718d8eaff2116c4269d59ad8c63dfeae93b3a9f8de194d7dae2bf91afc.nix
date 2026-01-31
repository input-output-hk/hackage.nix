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
      specVersion = "3.0";
      identifier = { name = "golds-gym"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "@ocramz";
      author = "Marco Zocca";
      homepage = "";
      url = "";
      synopsis = "Golden testing framework for performance benchmarks";
      description = "A Haskell framework for golden testing of timing benchmarks.\nBenchmarks are saved to golden files on first run and compared\nagainst on subsequent runs. Golden files are architecture-specific\nto account for hardware differences.\n.\nBased on hspec and benchpress.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
          (hsPkgs."benchpress" or (errorHandler.buildDepError "benchpress"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
        ];
        buildable = true;
      };
      tests = {
        "golds-gym-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."golds-gym" or (errorHandler.buildDepError "golds-gym"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }