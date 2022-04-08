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
      specVersion = "1.12";
      identifier = { name = "pos"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Grant Weyburne";
      maintainer = "Grant Weyburne <gbwey9@gmail.com>";
      author = "Grant Weyburne <gbwey9@gmail.com>";
      homepage = "https://github.com/gbwey/pos#readme";
      url = "";
      synopsis = "positive numbers";
      description = "A library for representing positive integers. . Useful for handling nonempty containers and fixed containers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "pos-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."pos" or (errorHandler.buildDepError "pos"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }