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
      identifier = { name = "pipes-async"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, John Wiegley";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/pipes-async";
      url = "";
      synopsis = "A higher-level interface to using concurrency with pipes";
      description = "Provides combinators like '>&>' for easily adding concurrency.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."pipes-async" or (errorHandler.buildDepError "pipes-async"))
            ];
          buildable = true;
          };
        };
      };
    }