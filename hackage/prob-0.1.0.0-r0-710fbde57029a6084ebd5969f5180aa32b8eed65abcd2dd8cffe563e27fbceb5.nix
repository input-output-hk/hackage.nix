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
      identifier = { name = "prob"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "Chris Smith and Shae Erisson";
      homepage = "https://github.com/cdsmith/prob";
      url = "";
      synopsis = "Discrete probability monad";
      description = "Provides the `Distribution` monad, which describes discrete\nprobability distributions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."prob" or (errorHandler.buildDepError "prob"))
            ];
          buildable = true;
          };
        };
      };
    }