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
      identifier = { name = "postgresql-tx-squeal"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 SimSpace";
      maintainer = "carymrobbins@gmail.com";
      author = "Cary Robbins";
      homepage = "https://github.com/simspace/postgresql-tx#readme";
      url = "";
      synopsis = "postgresql-tx interfacing for use with squeal-postgresql.";
      description = "Please see the README on GitHub at <https://github.com/simspace/postgresql-tx#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."postgresql-tx" or (errorHandler.buildDepError "postgresql-tx"))
          (hsPkgs."records-sop" or (errorHandler.buildDepError "records-sop"))
          (hsPkgs."squeal-postgresql" or (errorHandler.buildDepError "squeal-postgresql"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
        buildable = true;
        };
      };
    }