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
      identifier = { name = "cqrs-postgresql"; version = "0.10.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "PostgreSQL backend for the cqrs package.";
      description = "PostgreSQL backend for the cqrs package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
          (hsPkgs."cqrs-core" or (errorHandler.buildDepError "cqrs-core"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."enclosed-exceptions" or (errorHandler.buildDepError "enclosed-exceptions"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cqrs-core" or (errorHandler.buildDepError "cqrs-core"))
            (hsPkgs."cqrs-testkit" or (errorHandler.buildDepError "cqrs-testkit"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."pg-harness-client" or (errorHandler.buildDepError "pg-harness-client"))
            (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
            (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
            (hsPkgs."cqrs-postgresql" or (errorHandler.buildDepError "cqrs-postgresql"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }