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
      identifier = { name = "kiroku-store-migrations"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nadeem@gmail.com";
      author = "Nadeem Bitar";
      homepage = "https://github.com/shinzui/kiroku";
      url = "";
      synopsis = "Schema migrations for kiroku-store";
      description = "Embedded codd migrations and a migration executable for installing and\nupgrading the PostgreSQL schema used by @kiroku-store@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."codd" or (errorHandler.buildDepError "codd"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      exes = {
        "kiroku-store-migrate" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."codd" or (errorHandler.buildDepError "codd"))
            (hsPkgs."kiroku-store-migrations" or (errorHandler.buildDepError "kiroku-store-migrations"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
      tests = {
        "kiroku-store-migrations-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."codd" or (errorHandler.buildDepError "codd"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ephemeral-pg" or (errorHandler.buildDepError "ephemeral-pg"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."hasql-pool" or (errorHandler.buildDepError "hasql-pool"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."kiroku-store" or (errorHandler.buildDepError "kiroku-store"))
            (hsPkgs."kiroku-store-migrations" or (errorHandler.buildDepError "kiroku-store-migrations"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }