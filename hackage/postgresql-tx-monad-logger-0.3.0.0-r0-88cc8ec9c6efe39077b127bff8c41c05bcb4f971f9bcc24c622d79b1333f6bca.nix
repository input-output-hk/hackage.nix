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
      identifier = {
        name = "postgresql-tx-monad-logger";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2020 SimSpace";
      maintainer = "carymrobbins@gmail.com";
      author = "Cary Robbins";
      homepage = "https://github.com/simspace/postgresql-tx#readme";
      url = "";
      synopsis = "postgresql-tx interfacing for use with monad-logger.";
      description = "Please see the README on GitHub at <https://github.com/simspace/postgresql-tx#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."postgresql-tx" or (errorHandler.buildDepError "postgresql-tx"))
        ];
        buildable = true;
      };
    };
  }