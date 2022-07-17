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
      specVersion = "3.0";
      identifier = { name = "message-db-temp"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "2022 David Burkett";
      maintainer = "David Burkett";
      author = "David Burkett";
      homepage = "https://github.com/Disco-Dave/message-db";
      url = "";
      synopsis = "Temporary message-db for integration testing";
      description = "See the readme on github for me info: https://github.com/Disco-Dave/message-db/tree/main/message-db-temp#readme";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."postgres-options" or (errorHandler.buildDepError "postgres-options"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tmp-postgres" or (errorHandler.buildDepError "tmp-postgres"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          ];
        buildable = true;
        };
      };
    }