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
      identifier = { name = "superbubbles"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Simon Marechal";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "https://github.com/bartavelle/superbubbles#readme";
      url = "";
      synopsis = "Find \"superbubbles\", as described in https://arxiv.org/abs/1307.7925";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "superbubbles-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."superbubbles" or (errorHandler.buildDepError "superbubbles"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }