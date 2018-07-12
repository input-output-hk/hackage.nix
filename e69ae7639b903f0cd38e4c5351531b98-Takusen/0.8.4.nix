{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      odbc = false;
      oracle = false;
      postgres = false;
      sqlite = false;
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Takusen";
          version = "0.8.4";
        };
        license = "BSD-3-Clause";
        copyright = "2003-2008, Alistair Bayley, Oleg Kiselyov";
        maintainer = "alistair@abayley.org, oleg@pobox.com";
        author = "Alistair Bayley, Oleg Kiselyov";
        homepage = "http://darcs.haskell.org/takusen";
        url = "http://darcs.haskell.org/takusen";
        synopsis = "Database library with left-fold interface, for PostgreSQL, Oracle, SQLite, ODBC.";
        description = "Takusen is a DBMS access library. Like HSQL and HDBC, we support\narbitrary SQL statements (currently strings, extensible to anything\nthat can be converted to a string).\n\nTakusen's unique selling point is safety and efficiency.\nWe statically ensure all acquired database resources - such\nas cursors, connections, and statement handles - are released, exactly\nonce, at predictable times. Takusen can avoid loading the whole result\nset in memory, and so can handle queries returning millions of rows in\nconstant space. Takusen also supports automatic marshalling and\nunmarshalling of results and query parameters. These benefits come\nfrom the design of query result processing around a left-fold\nenumerator.\n\nCurrently we fully support ODBC, Oracle, Sqlite, and PostgreSQL.";
        buildType = "Custom";
      };
      components = {
        "Takusen" = {
          depends  = ([
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.time
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.8") hsPkgs.old-time) ++ [
            hsPkgs.base
          ];
          libs = ((pkgs.lib.optionals _flags.odbc (if system.isWindows
            then [ pkgs.odbc32 ]
            else if system.isOsx
              then [ pkgs.iodbc ]
              else [
                pkgs.odbc
              ]) ++ pkgs.lib.optionals _flags.oracle (if system.isWindows
            then [ pkgs.oci ]
            else [
              pkgs.clntsh
            ])) ++ pkgs.lib.optional _flags.postgres pkgs.pq) ++ pkgs.lib.optional _flags.sqlite pkgs.sqlite3;
          pkgconfig = pkgs.lib.optionals _flags.sqlite (pkgs.lib.optional (!system.isWindows) pkgconfPkgs.sqlite3);
        };
        exes = {
          "takusen_tests" = {
            depends  = (([
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.time
              hsPkgs.QuickCheck
            ] ++ pkgs.lib.optional (!(!_flags.buildtests)) hsPkgs.Takusen) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.8") hsPkgs.old-time) ++ [
              hsPkgs.base
            ];
          };
          "miniunit_tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }