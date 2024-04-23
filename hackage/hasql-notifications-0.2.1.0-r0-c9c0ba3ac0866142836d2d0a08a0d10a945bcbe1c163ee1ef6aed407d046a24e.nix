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
      identifier = { name = "hasql-notifications"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Diogo Biazus";
      maintainer = "diogo@biazus.ca";
      author = "Diogo Biazus";
      homepage = "https://github.com/diogob/hasql-notifications";
      url = "";
      synopsis = "LISTEN/NOTIFY support for Hasql";
      description = "Use PostgreSQL Asynchronous notification support with your Hasql Types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hasql-pool" or (errorHandler.buildDepError "hasql-pool"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."postgresql-libpq" or (errorHandler.buildDepError "postgresql-libpq"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
        ];
        buildable = true;
      };
      exes = {
        "hasql-notifications" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."hasql-notifications" or (errorHandler.buildDepError "hasql-notifications"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hasql-notifications-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."hasql-notifications" or (errorHandler.buildDepError "hasql-notifications"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }