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
      identifier = { name = "odbc"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "FP Complete 2018";
      maintainer = "chrisdone@fpcomplete.com";
      author = "";
      homepage = "https://github.com/fpco/odbc";
      url = "";
      synopsis = "Haskell binding to the ODBC API, aimed at SQL Server driver";
      description = "Haskell binding to the ODBC API. This has been tested\nagainst the Microsoft SQL Server ODBC drivers. Its test\nsuite runs on OS X, Windows and Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        libs = if system.isWindows || system.isWindows
          then [ (pkgs."odbc32" or (errorHandler.sysDepError "odbc32")) ]
          else [ (pkgs."odbc" or (errorHandler.sysDepError "odbc")) ];
        buildable = true;
        };
      exes = {
        "odbc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."odbc" or (errorHandler.buildDepError "odbc"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."odbc" or (errorHandler.buildDepError "odbc"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "space" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."odbc" or (errorHandler.buildDepError "odbc"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        };
      };
    }