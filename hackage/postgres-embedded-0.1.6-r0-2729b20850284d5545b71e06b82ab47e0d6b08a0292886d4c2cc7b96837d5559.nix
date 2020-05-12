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
      specVersion = "1.18";
      identifier = { name = "postgres-embedded"; version = "0.1.6"; };
      license = "MIT";
      copyright = "2017 Ilya Murzinov";
      maintainer = "Ilya Murzinov <murz42@gmail.com>";
      author = "Ilya Murzinov";
      homepage = "https://github.com/ilya-murzinov/postgres-embedded";
      url = "";
      synopsis = "Library for easily running embedded PostgreSQL server for tests";
      description = "Library for easily running embedded PostgreSQL server for tests";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."shell-conduit" or (errorHandler.buildDepError "shell-conduit"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      tests = {
        "postgres-embedded-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."postgres-embedded" or (errorHandler.buildDepError "postgres-embedded"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."shell-conduit" or (errorHandler.buildDepError "shell-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }