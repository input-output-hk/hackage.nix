{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "narc";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ezra@ezrakilty.net";
        author = "Ezra e. k. Cooper";
        homepage = "http://ezrakilty.net/projects/narc";
        url = "";
        synopsis = "Query SQL databases using Nested Relational Calculus embedded in Haskell.";
        description = "Narc is an embedded language for querying SQL databases,\nwhich permits using the ``nested relational'' model, a more\nflexible model than the traditional relational model of SQL\ndatabases. In spite of this richer data model, queries are\ntransformed into SQL to run against standard databases.\n\nTo use the language, express a query using the combinators\nlike @foreach@, @table@, @having@, @singleton@ and so on.\nWrap this in a call to @narcToSQLString@ to get a string\nthat can be sent to a SQL database.\n\nTo send a query directly to an HDBC connection, import\nthe module @Database.Narc.HDBC@ and use its @run@ function,\npassing it an HDBC connection and a Narc query. The result\nis an IO action that returns a 2-D list of result values\nin HDBC's usual format.";
        buildType = "Simple";
      };
      components = {
        "narc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.HDBC
          ];
        };
      };
    }