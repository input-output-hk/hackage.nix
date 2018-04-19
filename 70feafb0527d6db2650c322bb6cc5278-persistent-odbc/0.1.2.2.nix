{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
      tester = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "persistent-odbc";
          version = "0.1.2.2";
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
        persistent-odbc = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.time
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.convertible
            hsPkgs.HDBC
            hsPkgs.HDBC-odbc
            hsPkgs.monad-logger
            hsPkgs.resourcet
            hsPkgs.monad-control
            hsPkgs.persistent-template
            hsPkgs.persistent
            hsPkgs.bytestring
          ] ++ pkgs.lib.optionals _flags.tester [
            hsPkgs.blaze-html
            hsPkgs.esqueleto
          ];
        };
      };
    }