{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsql-mysql";
          version = "1.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chris Done <chrisdone@gmail.com>";
        author = "Krasimir Angelov <kr.a...@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "MySQL driver for HSQL.";
        description = "MySQL driver for HSQL.";
        buildType = "Simple";
      };
      components = {
        hsql-mysql = {
          depends  = [
            hsPkgs.base
            hsPkgs.hsql
            hsPkgs.Cabal
            hsPkgs.old-time
          ];
          libs = [ pkgs.mysqlclient ];
        };
      };
    }