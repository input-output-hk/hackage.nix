{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventful-sqlite";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "David Reaver";
        author = "";
        homepage = "https://github.com/jdreaver/eventful#readme";
        url = "";
        synopsis = "SQLite implementations for eventful";
        description = "SQLite implementations for eventful";
        buildType = "Simple";
      };
      components = {
        eventful-sqlite = {
          depends  = [
            hsPkgs.base
            hsPkgs.eventful-core
            hsPkgs.eventful-sql-common
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.persistent
            hsPkgs.persistent-sqlite
            hsPkgs.text
            hsPkgs.uuid
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.eventful-core
              hsPkgs.eventful-sql-common
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.text
              hsPkgs.uuid
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.eventful-test-helpers
            ];
          };
          style = {
            depends  = [
              hsPkgs.base
              hsPkgs.eventful-core
              hsPkgs.eventful-sql-common
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.persistent
              hsPkgs.persistent-sqlite
              hsPkgs.text
              hsPkgs.uuid
              hsPkgs.hlint
            ];
          };
        };
      };
    }