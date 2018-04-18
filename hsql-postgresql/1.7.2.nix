{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hsql-postgresql";
          version = "1.7.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nick.rudnick@googlemail.com";
        author = "Krasimir Angelov <kr.angelov@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "";
        description = "PostgreSQL driver for HSQL.";
        buildType = "Custom";
      };
      components = {
        hsql-postgresql = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsql
            hsPkgs.old-time
          ];
          libs = [ pkgs.pq ];
        };
      };
    }