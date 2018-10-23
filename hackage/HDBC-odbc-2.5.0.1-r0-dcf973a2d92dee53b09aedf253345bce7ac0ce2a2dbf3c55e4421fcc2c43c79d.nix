{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      buildtests = false;
      buildstresstest = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "HDBC-odbc";
        version = "2.5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2005-2014 John Goerzen, Nicolas Wu, Anton Dessiatov";
      maintainer = "Anton Dessiatov <anton.dessiatov@gmail.com>";
      author = "John Goerzen";
      homepage = "https://github.com/hdbc/hdbc-odbc";
      url = "";
      synopsis = "ODBC driver for HDBC";
      description = "This package provides an ODBC database backend for HDBC.\nIt is cross-platform and supports unixODBC on Unix/Linux/POSIX platforms\nand Microsoft ODBC on Windows.  It is also the preferred way to access\nMySQL databases from Haskell.";
      buildType = "Simple";
    };
    components = {
      "HDBC-odbc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.concurrent-extra)
          (hsPkgs.mtl)
          (hsPkgs.HDBC)
          (hsPkgs.time)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
        ];
        libs = if system.isWindows || system.isWindows
          then [ (pkgs."odbc32") ]
          else [
            (pkgs."odbc")
            (pkgs."pthread")
          ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-odbc)
            (hsPkgs.QuickCheck)
            (hsPkgs.testpack)
            (hsPkgs.containers)
            (hsPkgs.old-time)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.convertible)
          ];
        };
        "stresstest" = {
          depends  = pkgs.lib.optionals (flags.buildstresstest) [
            (hsPkgs.base)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-odbc)
            (hsPkgs.random)
            (hsPkgs.resource-pool)
          ];
        };
      };
    };
  }