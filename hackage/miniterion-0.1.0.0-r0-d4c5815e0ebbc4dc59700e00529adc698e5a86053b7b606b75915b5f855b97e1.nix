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
      identifier = { name = "miniterion"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "8c6794b6@gmail.com";
      author = "8c6794b6";
      homepage = "";
      url = "";
      synopsis = "Simple and lightweight benchmark utilities";
      description = "Simple benchmark utilities with API subset from\n@criterion@, depends on two packages: @base@ and @deepseq@.";
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
        "miniterion-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miniterion" or (errorHandler.buildDepError "miniterion"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "fibo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miniterion" or (errorHandler.buildDepError "miniterion"))
            ];
          buildable = true;
          };
        };
      };
    }