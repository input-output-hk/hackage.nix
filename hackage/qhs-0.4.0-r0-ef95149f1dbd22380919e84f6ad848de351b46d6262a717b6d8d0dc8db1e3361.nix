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
      identifier = { name = "qhs"; version = "0.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "itchyny <itchyny@cybozu.co.jp>";
      author = "itchyny <itchyny@cybozu.co.jp>";
      homepage = "https://github.com/itchyny/qhs";
      url = "";
      synopsis = "Command line tool qhs, SQL queries on CSV and TSV files.";
      description = "This is a Haskell port of <https://github.com/harelba/q q command>.";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "qhs-lib" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."simple-sql-parser" or (errorHandler.buildDepError "simple-sql-parser"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          buildable = true;
        };
      };
      exes = {
        "qhs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qhs".components.sublibs.qhs-lib or (errorHandler.buildDepError "qhs:qhs-lib"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."qhs".components.sublibs.qhs-lib or (errorHandler.buildDepError "qhs:qhs-lib"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }