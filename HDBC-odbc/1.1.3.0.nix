{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "HDBC-odbc";
          version = "1.1.3.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2005-2007 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://software.complete.org/hdbc-odbc";
        url = "";
        synopsis = "ODBC driver for HDBC";
        description = "This package provides an ODBC database backend for HDBC.\nIt is cross-platform and supports unixODBC on Unix/Linux/POSIX platforms\nand Microsoft ODBC on Windows.  It is also the preferred way to access\nMySQL databases from Haskell.";
        buildType = "Custom";
      };
      components = {
        HDBC-odbc = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.HDBC
            hsPkgs.parsec
          ];
        };
      };
    }