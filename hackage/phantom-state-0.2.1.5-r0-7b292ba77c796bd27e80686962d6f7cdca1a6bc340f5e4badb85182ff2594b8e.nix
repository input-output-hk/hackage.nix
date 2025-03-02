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
      specVersion = "1.18";
      identifier = { name = "phantom-state"; version = "0.2.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniel Casanueva (coding `at` danielcasanueva.eu)";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Phantom State Transformer. Like State Monad, but without values.";
      description = "A monad transformer that mimics the State Monad Transformer from the\n<http://hackage.haskell.org/package/transformers transformers> package,\nbut dropping the values. In those cases that you want to use the State\nMonad but you only care about effects and how the state changes, use\nthis library to earn a plus of efficiency.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      benchmarks = {
        "phantom-state-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."phantom-state" or (errorHandler.buildDepError "phantom-state"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }