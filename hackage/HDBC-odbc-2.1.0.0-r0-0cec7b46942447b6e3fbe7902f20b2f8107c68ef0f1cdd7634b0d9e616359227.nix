{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildtests = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "HDBC-odbc"; version = "2.1.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2005-2009 John Goerzen";
      maintainer = "John Goerzen <jgoerzen@complete.org>";
      author = "John Goerzen";
      homepage = "http://software.complete.org/hdbc-odbc";
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
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.9") (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"));
        libs = if system.isWindows || system.isWindows
          then [
            (pkgs."odbc32" or ((hsPkgs.pkgs-errors).sysDepError "odbc32"))
            ]
          else [ (pkgs."odbc" or ((hsPkgs.pkgs-errors).sysDepError "odbc")) ];
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = [
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
        };
      };
    }