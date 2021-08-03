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
      identifier = { name = "poker"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2021 Ghais";
      maintainer = "0x47@0x49.dev";
      author = "Ghais";
      homepage = "https://github.com/ghais/poker#readme";
      url = "";
      synopsis = "Texas holdem hand evaluation and simulation.";
      description = "Please see the README on GitHub at <https://github.com/ghais/poker#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
          (hsPkgs."rvar" or (errorHandler.buildDepError "rvar"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "poker-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."poker" or (errorHandler.buildDepError "poker"))
            (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
            ];
          buildable = true;
          };
        };
      tests = {
        "evaluate-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."poker" or (errorHandler.buildDepError "poker"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "evaluate-benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."poker" or (errorHandler.buildDepError "poker"))
            ];
          buildable = true;
          };
        "evaluate-simulate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."poker" or (errorHandler.buildDepError "poker"))
            ];
          buildable = true;
          };
        };
      };
    }