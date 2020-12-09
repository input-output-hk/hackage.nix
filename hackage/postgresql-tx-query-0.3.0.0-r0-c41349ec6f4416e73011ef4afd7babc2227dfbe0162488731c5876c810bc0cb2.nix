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
      identifier = { name = "postgresql-tx-query"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 SimSpace";
      maintainer = "carymrobbins@gmail.com";
      author = "Cary Robbins";
      homepage = "https://github.com/simspace/postgresql-tx#readme";
      url = "";
      synopsis = "postgresql-tx interfacing for use with postgresql-query.";
      description = "Please see the README on GitHub at <https://github.com/simspace/postgresql-tx#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."postgresql-query" or (errorHandler.buildDepError "postgresql-query"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."postgresql-tx" or (errorHandler.buildDepError "postgresql-tx"))
          (hsPkgs."postgresql-tx-monad-logger" or (errorHandler.buildDepError "postgresql-tx-monad-logger"))
          (hsPkgs."postgresql-tx-simple" or (errorHandler.buildDepError "postgresql-tx-simple"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      };
    }