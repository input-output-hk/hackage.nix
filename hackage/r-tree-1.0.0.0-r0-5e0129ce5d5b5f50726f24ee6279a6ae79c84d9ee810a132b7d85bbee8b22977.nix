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
      specVersion = "2.2";
      identifier = { name = "r-tree"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "Sebastian Wagner, Birte Wagner, Oleksii Divak";
      maintainer = "Oleksii Divak <frozenwitness@gmail.com>";
      author = "Sebastian Wagner, Birte Wagner, Oleksii Divak";
      homepage = "https://github.com/sebastian-philipp/r-tree";
      url = "";
      synopsis = "R-/R*-trees.";
      description = "R-trees and R*-trees.\nSee the <https://github.com/sebastian-philipp/r-tree/blob/master/README.md README>\nfor a brief overview of the data structures included in this package.";
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
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."r-tree" or (errorHandler.buildDepError "r-tree"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "time" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."r-tree" or (errorHandler.buildDepError "r-tree"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "space" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."r-tree" or (errorHandler.buildDepError "r-tree"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
          ];
          buildable = true;
        };
      };
    };
  }