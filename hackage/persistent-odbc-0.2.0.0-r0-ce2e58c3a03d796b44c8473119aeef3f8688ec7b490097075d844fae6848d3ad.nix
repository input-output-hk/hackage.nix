{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      debug = false;
      tester = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "persistent-odbc";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "gbwey9@gmail.com";
      author = "Grant Weyburne";
      homepage = "https://github.com/gbwey/persistent-odbc";
      url = "";
      synopsis = "Backend for the persistent library using ODBC";
      description = "This package contains backends for persistent using ODBC.\nIt currently supports the following databases: MSSQL, MySql, Oracle, Sqlite, DB2, Postgres.\nUses HDBC-ODBC for accessing ODBC.";
      buildType = "Simple";
    };
    components = {
      "persistent-odbc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.time)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.convertible)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-odbc)
          (hsPkgs.monad-logger)
          (hsPkgs.resourcet)
          (hsPkgs.monad-control)
          (hsPkgs.persistent-template)
          (hsPkgs.persistent)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optionals (flags.tester) [
          (hsPkgs.blaze-html)
          (hsPkgs.esqueleto)
        ];
      };
      exes = {
        "TestODBC" = {
          depends  = pkgs.lib.optionals (flags.tester) [
            (hsPkgs.base)
            (hsPkgs.persistent-odbc)
            (hsPkgs.blaze-html)
            (hsPkgs.esqueleto)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.time)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.convertible)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-odbc)
            (hsPkgs.monad-logger)
            (hsPkgs.resourcet)
            (hsPkgs.monad-control)
            (hsPkgs.persistent-template)
            (hsPkgs.persistent)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }