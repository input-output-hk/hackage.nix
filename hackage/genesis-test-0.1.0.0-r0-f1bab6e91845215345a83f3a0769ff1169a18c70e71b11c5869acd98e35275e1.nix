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
      identifier = { name = "genesis-test"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "2017 CJ Affiliate by Conversant";
      maintainer = "Alexis King <lexi.lambda@gmail.com>";
      author = "";
      homepage = "https://github.com/cjdev/genesis#readme";
      url = "";
      synopsis = "Opinionated bootstrapping for Haskell web services.";
      description = "Opinionated bootstrapping for Haskell web services.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."genesis" or (errorHandler.buildDepError "genesis"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."monad-persist" or (errorHandler.buildDepError "monad-persist"))
          (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      tests = {
        "genesis-test-test-suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."envparse" or (errorHandler.buildDepError "envparse"))
            (hsPkgs."genesis" or (errorHandler.buildDepError "genesis"))
            (hsPkgs."genesis-test" or (errorHandler.buildDepError "genesis-test"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."monad-persist" or (errorHandler.buildDepError "monad-persist"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }