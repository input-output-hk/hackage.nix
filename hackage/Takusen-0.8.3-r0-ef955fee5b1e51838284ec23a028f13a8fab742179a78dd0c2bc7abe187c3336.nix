{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { odbc = false; oracle = false; postgres = false; sqlite = false; };
    package = {
      specVersion = "1.4";
      identifier = { name = "Takusen"; version = "0.8.3"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.old-time)
          ];
        libs = (((pkgs.lib).optionals (flags.odbc) (if system.isWindows
          then [ (pkgs."odbc32") ]
          else [
            (pkgs."odbc")
            ]) ++ (pkgs.lib).optionals (flags.oracle) (if system.isWindows
          then [ (pkgs."oci") ]
          else [
            (pkgs."clntsh")
            ])) ++ (pkgs.lib).optional (flags.postgres) (pkgs."pq")) ++ (pkgs.lib).optional (flags.sqlite) (pkgs."sqlite3");
        pkgconfig = (pkgs.lib).optionals (flags.sqlite) ((pkgs.lib).optional (!system.isWindows) (pkgconfPkgs.sqlite3));
        };
      };
    }