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
      specVersion = "1.8";
      identifier = { name = "state-plus"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Boris Sukholitko, 2017";
      maintainer = "boriss@gmail.com";
      author = "Boris Sukholitko";
      homepage = "";
      url = "";
      synopsis = "MonadPlus for StateT";
      description = "Implements MonadPlus with left catch (MonadOr) for StateT.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."state-plus" or (errorHandler.buildDepError "state-plus"))
            (hsPkgs."checkers" or (errorHandler.buildDepError "checkers"))
          ];
          buildable = true;
        };
      };
    };
  }