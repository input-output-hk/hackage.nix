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
      specVersion = "3.8";
      identifier = { name = "dani-sqlite"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2022 - 2022 Daniel Díaz";
      maintainer = "Daniel Díaz <diaz_carrete@yahoo.com>";
      author = "Daniel Díaz <diaz_carrete@yahoo.com>";
      homepage = "https://github.com/danidiaz/dani-sqlite";
      url = "";
      synopsis = "Low-level binding to Sqlite3.";
      description = "Low-level binding to Sqlite3. \nUTF8 and BLOB support.\nsqlite library not included.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."dani-sqlite".components.sublibs.bindings or (errorHandler.buildDepError "dani-sqlite:bindings"))
          (hsPkgs."dani-sqlite".components.sublibs.direct or (errorHandler.buildDepError "dani-sqlite:direct"))
        ];
        buildable = true;
      };
      sublibs = {
        "direct" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dani-sqlite".components.sublibs.bindings or (errorHandler.buildDepError "dani-sqlite:bindings"))
          ];
          buildable = true;
        };
        "bindings" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          libs = [ (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3")) ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."dani-sqlite" or (errorHandler.buildDepError "dani-sqlite"))
            (hsPkgs."dani-sqlite".components.sublibs.bindings or (errorHandler.buildDepError "dani-sqlite:bindings"))
            (hsPkgs."dani-sqlite".components.sublibs.direct or (errorHandler.buildDepError "dani-sqlite:direct"))
          ];
          buildable = true;
        };
        "test-query" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."dani-sqlite" or (errorHandler.buildDepError "dani-sqlite"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }