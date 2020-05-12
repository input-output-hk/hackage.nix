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
      specVersion = "1.9.2";
      identifier = { name = "lifted-base"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Bas van Dijk, Anders Kaseorg";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk, Anders Kaseorg";
      homepage = "https://github.com/basvandijk/lifted-base";
      url = "";
      synopsis = "lifted IO operations from the base library";
      description = "@lifted-base@ exports IO operations from the base library lifted to\nany instance of 'MonadBase' or 'MonadBaseControl'.\n\nNote that not all modules from @base@ are converted yet. If\nyou need a lifted version of a function from @base@, just\nask me to add it or send me a patch.\n\nThe package includes a copy of the @monad-peel@ testsuite written\nby Anders Kaseorg The tests can be performed using @cabal test@.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          ];
        buildable = true;
        };
      tests = {
        "test-lifted-base" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }