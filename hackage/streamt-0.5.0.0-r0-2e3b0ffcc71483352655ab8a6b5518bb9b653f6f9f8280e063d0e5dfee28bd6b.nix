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
      identifier = { name = "streamt"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David A Roberts <d@vidr.cc>";
      author = "Oleg Kiselyov, Sebastian Fischer, David A Roberts";
      homepage = "http://github.com/davidar/streamt";
      url = "";
      synopsis = "Simple, Fair and Terminating Backtracking Monad Transformer";
      description = "This Haskell library provides an implementation of the\nMonadPlus type class that enumerates results of a\nnon-deterministic computation by interleaving\nsubcomputations in a way that has usually much better\nmemory performance than other strategies with the same\ntermination properties.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "streamt-benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."streamt" or (errorHandler.buildDepError "streamt"))
          ];
          buildable = true;
        };
        "streamt-microkanren" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."streamt" or (errorHandler.buildDepError "streamt"))
          ];
          buildable = true;
        };
        "streamt-logic" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."streamt" or (errorHandler.buildDepError "streamt"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }