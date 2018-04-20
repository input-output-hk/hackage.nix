{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Takusen";
          version = "0.7";
        };
        license = "BSD-3-Clause";
        copyright = "2003-2007, Alistair Bayley, Oleg Kiselyov";
        maintainer = "alistair@abayley.org, oleg@pobox.com";
        author = "Alistair Bayley, Oleg Kiselyov";
        homepage = "http://darcs.haskell.org/takusen";
        url = "http://darcs.haskell.org/takusen";
        synopsis = "Database library with left-fold interface, for PostgreSQL, Oracle, SQLite, ODBC.";
        description = "Takusen is a DBMS access library. It has a backend for Oracle on Unix,\nLinux or Windows via OCI, and a stub to test the library without any database.\nThe infrastructure and the stub let one interface natively with other\ndatabases.\nThe distinguished feature of Takusen is processing query results using a\nleft-fold enumerator.  The user supplies an iteratee function, which receives\nrows one-at-a-time from the result-set.  The number of the arguments to the\niteratee is the number of the columns in the result-set, plus the seed. Each\ncolumn in the result-set has its own Haskell type. The latter could be a Maybe\ntype if the particular iteratee wishes to process NULLs.\nThe benefits are: more convenient and intuitive enumeration, iteration, and\naccumulation (see tests for examples); the retrieved data are not merely\nstrings but have Haskell types: Int, Float, Date, etc.; buffer preallocation;\npre-fetching; support for both enumerators and cursors, proper handling of all\nerrors including various IO errors. No unsafe operations are used.";
        buildType = "Simple";
      };
      components = {
        Takusen = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.old-time
          ];
        };
      };
    }