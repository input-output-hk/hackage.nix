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
      identifier = { name = "consistent"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Eventually consistent STM transactions.";
      description = "Eventually consistent STM transactions.\n\nConsistent provides eventually consistent atomic transactions, by delaying\nupdates until no threads is mutating a shared variable.\n\nThis comes at a cost of having a separate TVar for every thread, but has the\nadvantage that no thread will ever lock or retry except for the manager actor\nresponsible for performing the updates.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."consistent" or (errorHandler.buildDepError "consistent"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."lifted-async" or (errorHandler.buildDepError "lifted-async"))
            ];
          buildable = true;
          };
        };
      };
    }