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
    flags = { debug = false; tester = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "persistent-odbc"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "gbwey9@gmail.com";
      author = "Grant Weyburne";
      homepage = "https://github.com/gbwey/persistent-odbc";
      url = "";
      synopsis = "Backend for the persistent library using ODBC";
      description = "This package contains backends for persistent using ODBC.\nIt currently supports the following databases: MSSQL, MySql, Oracle, Sqlite, DB2, Postgres.\nUses HDBC-ODBC for accessing ODBC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HDBC-odbc" or (errorHandler.buildDepError "HDBC-odbc"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optionals (flags.tester) [
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
          ];
        buildable = true;
        };
      exes = {
        "TestODBC" = {
          depends = (pkgs.lib).optionals (flags.tester) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."persistent-odbc" or (errorHandler.buildDepError "persistent-odbc"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-odbc" or (errorHandler.buildDepError "HDBC-odbc"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = if flags.tester then true else false;
          };
        };
      };
    }