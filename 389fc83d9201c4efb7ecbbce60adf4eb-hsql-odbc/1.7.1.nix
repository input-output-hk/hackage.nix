{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "hsql-odbc";
          version = "1.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nick.rudnick@googlemail.com";
        author = "Krasimir Angelov <kr.angelov@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "";
        description = "ODBC driver for HSQL.";
        buildType = "Simple";
      };
      components = {
        hsql-odbc = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsql
            hsPkgs.old-time
          ];
          libs = [ pkgs.odbc ];
        };
      };
    }