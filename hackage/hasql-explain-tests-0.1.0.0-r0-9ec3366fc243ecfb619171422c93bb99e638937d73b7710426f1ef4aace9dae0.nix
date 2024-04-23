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
      specVersion = "2.4";
      identifier = { name = "hasql-explain-tests"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "(C) Talant i uspeh, 2022 ";
      maintainer = "alexander.vershilov@sirius.online";
      author = "Alexander Vershilov";
      homepage = "https://github.com/cheopslab/hasql-explain-tests";
      url = "";
      synopsis = "Hasql queries testing interface";
      description = "The library provides an interface to test queries\nin the projects that are using hasql library. Hasql library\nis very low-level and allows you to use all the features of Postgres\nat the cost of losing type safety. This package is intended to\nfill the gap and simplify testing the project by providing helper functions\nfor basic queries tests that do not depend on the concrete application logic.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."tmp-postgres" or (errorHandler.buildDepError "tmp-postgres"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
        ];
        buildable = true;
      };
      tests = {
        "hasql-explain-tests-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasql-explain-tests" or (errorHandler.buildDepError "hasql-explain-tests"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          ];
          buildable = true;
        };
      };
    };
  }