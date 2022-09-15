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
      identifier = { name = "hipsql-tx-simple"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 SimSpace";
      maintainer = "carymrobbins@gmail.com";
      author = "Cary Robbins";
      homepage = "https://github.com/simspace/hipsql#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/simspace/hipsql#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hipsql-monad" or (errorHandler.buildDepError "hipsql-monad"))
          (hsPkgs."hipsql-server" or (errorHandler.buildDepError "hipsql-server"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."postgresql-tx" or (errorHandler.buildDepError "postgresql-tx"))
          ];
        buildable = true;
        };
      };
    }