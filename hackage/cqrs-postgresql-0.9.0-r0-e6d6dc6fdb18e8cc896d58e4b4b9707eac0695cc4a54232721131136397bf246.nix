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
      identifier = { name = "cqrs-postgresql"; version = "0.9.0"; };
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
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."cqrs-types" or (errorHandler.buildDepError "cqrs-types"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."pool-conduit" or (errorHandler.buildDepError "pool-conduit"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "cqrs-postgresql-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."cqrs-types" or (errorHandler.buildDepError "cqrs-types"))
            (hsPkgs."cqrs-test" or (errorHandler.buildDepError "cqrs-test"))
            (hsPkgs."pool-conduit" or (errorHandler.buildDepError "pool-conduit"))
            (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
            (hsPkgs."cqrs-postgresql" or (errorHandler.buildDepError "cqrs-postgresql"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }