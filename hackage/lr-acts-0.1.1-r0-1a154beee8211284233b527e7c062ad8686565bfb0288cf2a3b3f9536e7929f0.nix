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
      identifier = { name = "lr-acts"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Alice Rixte 2025";
      maintainer = "alice.rixte@u-bordeaux.fr";
      author = "Alice Rixte";
      homepage = "https://github.com/AliceRixte/lr-acts#readme";
      url = "";
      synopsis = "Left and right actions, semidirect products and torsors";
      description = "Please see the README on GitHub at <https://github.com/AliceRixte/lr-acts/blob/main/README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
        ];
        buildable = true;
      };
      tests = {
        "lr-acts-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lr-acts" or (errorHandler.buildDepError "lr-acts"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "lr-acts-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
            (hsPkgs."lr-acts" or (errorHandler.buildDepError "lr-acts"))
          ];
          buildable = true;
        };
      };
    };
  }