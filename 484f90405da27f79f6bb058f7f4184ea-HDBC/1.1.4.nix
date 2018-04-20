{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "HDBC";
          version = "1.1.4";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2005-2008 John Goerzen";
        maintainer = "John Goerzen <jgoerzen@complete.org>";
        author = "John Goerzen";
        homepage = "http://software.complete.org/hdbc";
        url = "";
        synopsis = "Haskell Database Connectivity";
        description = "HDBC provides an abstraction layer between Haskell programs and SQL\nrelational databases. This lets you write database code once, in\nHaskell, and have it work with any number of backend SQL databases\n(MySQL, Oracle, PostgreSQL, ODBC-compliant databases, etc.)";
        buildType = "Custom";
      };
      components = {
        HDBC = {
          depends  = [
            hsPkgs.mtl
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.old-time
              hsPkgs.bytestring
              hsPkgs.containers
            ]
            else [ hsPkgs.base ]);
        };
      };
    }