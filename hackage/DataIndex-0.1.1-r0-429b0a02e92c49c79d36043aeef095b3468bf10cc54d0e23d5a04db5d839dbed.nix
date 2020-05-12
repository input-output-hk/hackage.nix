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
      identifier = { name = "DataIndex"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Yuhang(Steven) Wang";
      author = "";
      homepage = "https://github.com/yuhangwang/DataIndex#readme";
      url = "";
      synopsis = "A package for adding index column to data files";
      description = "DataIndex can add index column to data files";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "DataIndex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."DataIndex" or (errorHandler.buildDepError "DataIndex"))
            ];
          buildable = true;
          };
        };
      tests = {
        "DataIndex-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."DataIndex" or (errorHandler.buildDepError "DataIndex"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "DataIndex-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."DataIndex" or (errorHandler.buildDepError "DataIndex"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }