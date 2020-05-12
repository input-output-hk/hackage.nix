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
      identifier = { name = "cqrs-sqlite3"; version = "0.9.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "SQLite3 backend for the cqrs package.";
      description = "SQLite3 backend for the cqrs package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."cqrs-types" or (errorHandler.buildDepError "cqrs-types"))
          (hsPkgs."pool-conduit" or (errorHandler.buildDepError "pool-conduit"))
          (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "cqrs-sqlite3-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."cqrs-test" or (errorHandler.buildDepError "cqrs-test"))
            (hsPkgs."pool-conduit" or (errorHandler.buildDepError "pool-conduit"))
            (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."cqrs-sqlite3" or (errorHandler.buildDepError "cqrs-sqlite3"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }