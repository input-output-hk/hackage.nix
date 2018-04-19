{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HDBC-odbc";
          version = "2.3.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2005-2011 John Goerzen";
        maintainer = "Nicolas Wu <nicolas.wu@gmail.com>";
        author = "John Goerzen";
        homepage = "https://github.com/hdbc/hdbc-odbc";
        url = "";
        synopsis = "ODBC driver for HDBC";
        description = "This package provides an ODBC database backend for HDBC.\nIt is cross-platform and supports unixODBC on Unix/Linux/POSIX platforms\nand Microsoft ODBC on Windows.  It is also the preferred way to access\nMySQL databases from Haskell.";
        buildType = "Simple";
      };
      components = {
        HDBC-odbc = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.HDBC
            hsPkgs.time
            hsPkgs.utf8-string
            hsPkgs.bytestring
          ];
          libs = if system.isWindows || system.isWindows
            then [ pkgs.odbc32 ]
            else [ pkgs.odbc ];
        };
        exes = {
          runtests = {
            depends  = pkgs.lib.optionals _flags.buildtests [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.testpack
              hsPkgs.containers
              hsPkgs.old-time
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.convertible
            ];
            libs = if system.isWindows || system.isWindows
              then [ pkgs.odbc32 ]
              else [ pkgs.odbc ];
          };
        };
      };
    }