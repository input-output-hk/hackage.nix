{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "HDBC-sqlite3";
          version = "2.3.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2005-2011 John Goerzen";
        maintainer = "Erik Hesselink <hesselink@gmail.com>";
        author = "John Goerzen";
        homepage = "https://github.com/hdbc/hdbc-sqlite3";
        url = "";
        synopsis = "Sqlite v3 driver for HDBC";
        description = "This is the Sqlite v3 driver for HDBC, the generic\ndatabase access system for Haskell";
        buildType = "Simple";
      };
      components = {
        HDBC-sqlite3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.HDBC
            hsPkgs.utf8-string
          ];
          libs = [ pkgs.sqlite3 ];
        };
        exes = {
          runtests = {
            depends  = optionals _flags.buildtests [
              hsPkgs.HUnit
              hsPkgs.testpack
              hsPkgs.containers
              hsPkgs.convertible
              hsPkgs.old-time
              hsPkgs.time
              hsPkgs.old-locale
            ];
            libs = [ pkgs.sqlite3 ];
          };
        };
      };
    }