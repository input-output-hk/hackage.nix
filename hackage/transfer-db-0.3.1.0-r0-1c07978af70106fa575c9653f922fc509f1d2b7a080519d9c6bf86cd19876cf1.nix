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
      identifier = { name = "transfer-db"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Mihai Giurgeanu";
      maintainer = "mihai.giurgeanu@gmail.com";
      author = "Mihai Giurgeanu";
      homepage = "http://hub.darcs.net/mihaigiurgeanu/transfer-db";
      url = "";
      synopsis = "";
      description = "Simple SQL/CLI application that transfers data between 2 databases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sqlcli" or (errorHandler.buildDepError "sqlcli"))
          (hsPkgs."sqlcli-odbc" or (errorHandler.buildDepError "sqlcli-odbc"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."logging" or (errorHandler.buildDepError "logging"))
          (hsPkgs."store" or (errorHandler.buildDepError "store"))
          (hsPkgs."store-core" or (errorHandler.buildDepError "store-core"))
          (hsPkgs."th-utilities" or (errorHandler.buildDepError "th-utilities"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          ];
        buildable = true;
        };
      exes = {
        "transfer-db" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."console-program" or (errorHandler.buildDepError "console-program"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."logging" or (errorHandler.buildDepError "logging"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."sqlcli" or (errorHandler.buildDepError "sqlcli"))
            (hsPkgs."sqlcli-odbc" or (errorHandler.buildDepError "sqlcli-odbc"))
            (hsPkgs."transfer-db" or (errorHandler.buildDepError "transfer-db"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hspec-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."store" or (errorHandler.buildDepError "store"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
            (hsPkgs."transfer-db" or (errorHandler.buildDepError "transfer-db"))
            (hsPkgs."sqlcli" or (errorHandler.buildDepError "sqlcli"))
            ];
          buildable = true;
          };
        };
      };
    }