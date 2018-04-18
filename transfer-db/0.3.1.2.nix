{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "transfer-db";
          version = "0.3.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Mihai Giurgeanu";
        maintainer = "mihai.giurgeanu@gmail.com";
        author = "Mihai Giurgeanu";
        homepage = "http://hub.darcs.net/mihaigiurgeanu/transfer-db";
        url = "";
        synopsis = "ODBC database transfer";
        description = "Simple ODBC application that transfers data between 2 databases.\nIt is based on `sqlcli` package that should be installed with\nthe `odbc` flag set.\nTo build the application, you need odbc libraries installed. On\nWindows, they are installed by default. On unix, you should use\n[unixODBC](http://www.unixodbc.org) package.";
        buildType = "Simple";
      };
      components = {
        transfer-db = {
          depends  = [
            hsPkgs.base
            hsPkgs.sqlcli
            hsPkgs.sqlcli-odbc
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.logging
            hsPkgs.store
            hsPkgs.store-core
            hsPkgs.th-utilities
            hsPkgs.time
            hsPkgs.text
            hsPkgs.monad-control
            hsPkgs.stm
            hsPkgs.temporary
            hsPkgs.containers
            hsPkgs.clock
          ];
        };
        exes = {
          transfer-db = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.yaml
              hsPkgs.aeson
              hsPkgs.console-program
              hsPkgs.bytestring
              hsPkgs.logging
              hsPkgs.time
              hsPkgs.stm
              hsPkgs.containers
              hsPkgs.clock
              hsPkgs.monad-control
              hsPkgs.cassava
              hsPkgs.sqlcli
              hsPkgs.sqlcli-odbc
              hsPkgs.transfer-db
            ];
          };
        };
        tests = {
          hspec-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.store
              hsPkgs.time
              hsPkgs.bytestring
              hsPkgs.transformers
              hsPkgs.cpu
              hsPkgs.transfer-db
              hsPkgs.sqlcli
            ];
          };
        };
      };
    }