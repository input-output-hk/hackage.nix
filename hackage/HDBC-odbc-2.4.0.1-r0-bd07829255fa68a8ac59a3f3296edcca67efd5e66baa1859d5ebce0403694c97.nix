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
    flags = { buildtests = false; buildstresstest = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "HDBC-odbc"; version = "2.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2011 John Goerzen";
      maintainer = "Anton Dessiatov <anton.dessiatov@gmail.com>\nNicolas Wu <nicolas.wu@gmail.com>";
      author = "John Goerzen";
      homepage = "https://github.com/hdbc/hdbc-odbc";
      url = "";
      synopsis = "ODBC driver for HDBC";
      description = "This package provides an ODBC database backend for HDBC.\nIt is cross-platform and supports unixODBC on Unix/Linux/POSIX platforms\nand Microsoft ODBC on Windows.  It is also the preferred way to access\nMySQL databases from Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = if system.isWindows || system.isWindows
          then [ (pkgs."odbc32" or (errorHandler.sysDepError "odbc32")) ]
          else [ (pkgs."odbc" or (errorHandler.sysDepError "odbc")) ];
        buildable = true;
      };
      exes = {
        "runtests" = {
          depends = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."testpack" or (errorHandler.buildDepError "testpack"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          ];
          libs = if system.isWindows || system.isWindows
            then [ (pkgs."odbc32" or (errorHandler.sysDepError "odbc32")) ]
            else [ (pkgs."odbc" or (errorHandler.sysDepError "odbc")) ];
          buildable = if flags.buildtests then true else false;
        };
        "stresstest" = {
          depends = pkgs.lib.optionals (flags.buildstresstest) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
            (hsPkgs."HDBC-odbc" or (errorHandler.buildDepError "HDBC-odbc"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          ];
          buildable = if flags.buildstresstest then true else false;
        };
      };
    };
  }