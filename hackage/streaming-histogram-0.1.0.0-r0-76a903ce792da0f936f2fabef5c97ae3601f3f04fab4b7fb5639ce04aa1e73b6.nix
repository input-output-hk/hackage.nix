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
      identifier = { name = "streaming-histogram"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "tehunger@gmail.com";
      author = "Tom Hunger";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Inefficient implementation of a lossy online histogram\nalgorithm. See \"Numeric.StreamingHistogram\" for more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
        buildable = true;
        };
      tests = {
        "streaminghist-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."streaming-histogram" or (errorHandler.buildDepError "streaming-histogram"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "streaminghist-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."streaming-histogram" or (errorHandler.buildDepError "streaming-histogram"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }