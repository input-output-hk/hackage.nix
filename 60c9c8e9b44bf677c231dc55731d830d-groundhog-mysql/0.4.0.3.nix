{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "groundhog-mysql";
          version = "0.4.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Boris Lykah <lykahb@gmail.com>";
        author = "Boris Lykah <lykahb@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "MySQL backend for the groundhog library.";
        description = "This package uses mysql-simple and mysql";
        buildType = "Simple";
      };
      components = {
        "groundhog-mysql" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mysql-simple
            hsPkgs.mysql
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.groundhog
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.resource-pool
            hsPkgs.time
          ];
        };
      };
    }