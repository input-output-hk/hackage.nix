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
    flags = { test = false; hpc = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "monad-control"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Bas van Dijk, Anders Kaseorg";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk, Anders Kaseorg";
      homepage = "";
      url = "";
      synopsis = "Lift control operations, like exception catching, through monad transformers";
      description = "This package defines the type class @MonadControlIO@, a subset of\n@MonadIO@ into which generic control operations such as @catch@ can\nbe lifted from @IO@.  Instances are based on monad transformers in\n@MonadTransControl@, which includes all standard monad transformers\nin the @transformers@ library except @ContT@.  For convenience, it\nprovides a wrapped version of @Control.Exception@ with types\ngeneralized from @IO@ to all monads in @MonadControlIO@.\n\nNote that this package is a rewrite of Anders Kaseorg's @monad-peel@ library.\nThe main difference is that this package provides CPS style\noperators and exploits the @RankNTypes@ language extension to\nsimplify most definitions.\n\nThe package includes a copy of the @monad-peel@ testsuite written by Anders Kaseorg.\nThe tests can be performed by using @cabal test@.\n\nThe following @critertion@ based benchmark shows that @monad-control@ is about\n2 times faster than @monad-peel@:\n\n<http://code.haskell.org/~basvandijk/code/bench-monad-peel-control>";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "test-monad-control" = {
          depends = pkgs.lib.optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
          buildable = if flags.test then true else false;
        };
      };
    };
  }