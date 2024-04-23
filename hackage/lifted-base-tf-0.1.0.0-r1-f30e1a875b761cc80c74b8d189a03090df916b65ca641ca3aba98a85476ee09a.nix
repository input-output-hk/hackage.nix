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
      identifier = { name = "lifted-base-tf"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2012 Bas van Dijk, Anders Kaseorg";
      maintainer = "M Farkas-Dyck <strake888@gmail.com>";
      author = "Bas van Dijk, Anders Kaseorg";
      homepage = "https://github.com/basvandijk/lifted-base";
      url = "";
      synopsis = "lifted IO operations from the base library";
      description = "Fork of <https://hackage.haskell.org/package/lifted-base lifte-base> with type families rather than fundeps\n@lifted-base@ exports IO operations from the base library lifted to\nany instance of 'MonadBase' or 'MonadBaseControl'.\n\nNote that not all modules from @base@ are converted yet. If\nyou need a lifted version of a function from @base@, just\nask me to add it or send me a patch.\n\nThe package includes a copy of the @monad-peel@ testsuite written\nby Anders Kaseorg The tests can be performed using @cabal test@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."basic" or (errorHandler.buildDepError "basic"))
          (hsPkgs."control" or (errorHandler.buildDepError "control"))
        ];
        buildable = true;
      };
      tests = {
        "test-lifted-base" = {
          depends = [
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."basic" or (errorHandler.buildDepError "basic"))
            (hsPkgs."control" or (errorHandler.buildDepError "control"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-lifted-base" = {
          depends = [
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."monad-peel" or (errorHandler.buildDepError "monad-peel"))
          ];
          buildable = true;
        };
      };
    };
  }