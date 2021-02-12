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
      specVersion = "2.0";
      identifier = { name = "trek-app"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Jonathan Fischoff";
      maintainer = "jonathangfischoff at gmail.com";
      author = "Author name here";
      homepage = "https://github.com/jfischoff/trek#readme";
      url = "";
      synopsis = "A PostgreSQL Database Migrator";
      description = "Please see the README on GitHub at <https://github.com/jfischoff/trek#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          (hsPkgs."postgresql-simple-opts" or (errorHandler.buildDepError "postgresql-simple-opts"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."trek-db" or (errorHandler.buildDepError "trek-db"))
          (hsPkgs."postgres-options" or (errorHandler.buildDepError "postgres-options"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."pg-transact" or (errorHandler.buildDepError "pg-transact"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          ];
        buildable = true;
        };
      exes = {
        "trek" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."trek-app" or (errorHandler.buildDepError "trek-app"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."trek-app" or (errorHandler.buildDepError "trek-app"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."postgresql-simple-opts" or (errorHandler.buildDepError "postgresql-simple-opts"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tmp-postgres" or (errorHandler.buildDepError "tmp-postgres"))
            (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."time-qq" or (errorHandler.buildDepError "time-qq"))
            (hsPkgs."trek-db" or (errorHandler.buildDepError "trek-db"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."postgres-options" or (errorHandler.buildDepError "postgres-options"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }