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
      specVersion = "1.12";
      identifier = { name = "monad-control-aligned"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Bas van Dijk, Anders Kaseorg";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>, Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk, Anders Kaseorg";
      homepage = "https://github.com/athanclark/monad-control";
      url = "";
      synopsis = "Lift control operations, like exception catching, through monad transformers";
      description = "This package defines the type class @MonadBaseControl@, a subset of\n@MonadBase@ into which generic control operations such as @catch@ can be\nlifted from @IO@ or any other base monad. Instances are based on monad\ntransformers in @MonadTransControl@, which includes all standard monad\ntransformers in the @transformers@ library except @ContT@.\n\nSee the <http://hackage.haskell.org/package/lifted-base lifted-base>\npackage which uses @monad-control@ to lift @IO@\noperations from the @base@ library (like @catch@ or @bracket@) into any monad\nthat is an instance of @MonadBase@ or @MonadBaseControl@.\n\nNote that this package is a rewrite of Anders Kaseorg's @monad-peel@\nlibrary. The main difference is that this package provides CPS style operators\nand exploits the @RankNTypes@ and @TypeFamilies@ language extensions to\nsimplify and speedup most definitions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
        ];
        buildable = true;
      };
    };
  }