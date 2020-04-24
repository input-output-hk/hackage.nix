{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = if system.isWindows || system.isWindows
          then [
            (pkgs."odbc32" or ((hsPkgs.pkgs-errors).sysDepError "odbc32"))
            ]
          else [ (pkgs."odbc" or ((hsPkgs.pkgs-errors).sysDepError "odbc")) ];
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."testpack" or ((hsPkgs.pkgs-errors).buildDepError "testpack"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
            ];
          libs = if system.isWindows || system.isWindows
            then [
              (pkgs."odbc32" or ((hsPkgs.pkgs-errors).sysDepError "odbc32"))
              ]
            else [ (pkgs."odbc" or ((hsPkgs.pkgs-errors).sysDepError "odbc")) ];
          buildable = if flags.buildtests then true else false;
          };
        "stresstest" = {
          depends = (pkgs.lib).optionals (flags.buildstresstest) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
            (hsPkgs."HDBC-odbc" or ((hsPkgs.pkgs-errors).buildDepError "HDBC-odbc"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
            ];
          buildable = if flags.buildstresstest then true else false;
          };
        };
      };
    }