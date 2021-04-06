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
      identifier = { name = "hipsql-server"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 SimSpace";
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
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hipsql-api" or (errorHandler.buildDepError "hipsql-api"))
          (hsPkgs."hipsql-monad" or (errorHandler.buildDepError "hipsql-monad"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      exes = {
        "hipsql-demo-server" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hipsql-api" or (errorHandler.buildDepError "hipsql-api"))
            (hsPkgs."hipsql-monad" or (errorHandler.buildDepError "hipsql-monad"))
            (hsPkgs."hipsql-server" or (errorHandler.buildDepError "hipsql-server"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }