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
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "HDBC-sqlite3"; version = "2.3.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2011 John Goerzen";
      maintainer = "Nicolas Wu <nick@well-typed.com>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/hdbc-sqlite3";
      url = "";
      synopsis = "Sqlite v3 driver for HDBC";
      description = "This is the Sqlite v3 driver for HDBC, the generic\ndatabase access system for Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        libs = [ (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3")) ];
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."testpack" or (errorHandler.buildDepError "testpack"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ];
          libs = [ (pkgs."sqlite3" or (errorHandler.sysDepError "sqlite3")) ];
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }