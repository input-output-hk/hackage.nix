{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sqlcli-odbc";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Mihai Giurgeanu";
        maintainer = "mihai.giurgeanu@gmail.com";
        author = "Mihai Giurgeanu";
        homepage = "https://hub.darcs.com/mihaigiurgeanu/sqlcli-odbc";
        url = "";
        synopsis = "Specific ODBC definitions to be used by SQL CLI clients.";
        description = "You should use this package if you intend to use sqlcli package\nto connect to ODBC datasources.";
        buildType = "Simple";
      };
      components = {
        sqlcli-odbc = {
          depends  = [
            hsPkgs.base
            hsPkgs.sqlcli
          ];
        };
      };
    }