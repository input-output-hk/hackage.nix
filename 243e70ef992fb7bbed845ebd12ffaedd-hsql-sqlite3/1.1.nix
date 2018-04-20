{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hsql-sqlite3";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "";
        author = "Krasimir Angelov <kr.angelov@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "";
        description = "SQLite3 driver for HSQL.";
        buildType = "Custom";
      };
      components = {
        hsql-sqlite3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsql
          ];
        };
      };
    }