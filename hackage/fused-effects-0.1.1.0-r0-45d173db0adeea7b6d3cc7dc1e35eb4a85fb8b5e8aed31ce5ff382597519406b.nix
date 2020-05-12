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
      identifier = { name = "fused-effects"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Rob Rix, Patrick Thomson";
      maintainer = "robrix@github.com";
      author = "Rob Rix, Patrick Thomson";
      homepage = "https://github.com/robrix/fused-effects";
      url = "";
      synopsis = "A fast, flexible, fused effect system.";
      description = "A fast, flexible, fused effect system, à la Effect Handlers in Scope, Monad Transformers and Modular Algebraic Effects: What Binds Them Together, and Fusion for Free—Efficient Algebraic Effect Handlers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }