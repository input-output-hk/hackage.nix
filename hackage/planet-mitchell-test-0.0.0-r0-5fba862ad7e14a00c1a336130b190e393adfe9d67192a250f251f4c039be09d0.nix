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
      specVersion = "2.0";
      identifier = { name = "planet-mitchell-test"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/planet-mitchell";
      url = "";
      synopsis = "Planet Mitchell";
      description = "Companion package of <https://hackage.haskell.org/package/planet-mitchell planet-mitchell>,\nfor testing and benchmarking.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
          (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          (hsPkgs."tasty-rerun" or (errorHandler.buildDepError "tasty-rerun"))
          (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
          ];
        buildable = true;
        };
      };
    }