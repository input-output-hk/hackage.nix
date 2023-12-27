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
      identifier = { name = "hasql-url"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "2020 Nadeem Bitar";
      maintainer = "Nadeem Bitar <nadeem@gmail.com>";
      author = "Nadeem Bitar";
      homepage = "https://github.com/shinzui/hasql-url";
      url = "";
      synopsis = "Parse PostgreSQL connection URI into Hasql.Connection Settings";
      description = "The 'Hasql.URL' module in this package exports\na helper function 'parseDatabaseUrl' to\nconstruct 'Settings' from a URI (or string).\n.\n@\n>>> parseDatabaseUrl \"postgres://username:password@localhost:5433/database\"\nJust \"host=localhost port=5433 user=username password=password dbname=database\"\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      tests = {
        "hasql-url-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."hasql-url" or (errorHandler.buildDepError "hasql-url"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }