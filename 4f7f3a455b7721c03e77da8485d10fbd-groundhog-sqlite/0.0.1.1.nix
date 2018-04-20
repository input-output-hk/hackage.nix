{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      systemlib = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "groundhog-sqlite";
          version = "0.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Boris Lykah <lykahb@gmail.com>";
        author = "Boris Lykah <lykahb@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Backend for the groundhog library using sqlite3.";
        description = "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.";
        buildType = "Simple";
      };
      components = {
        groundhog-sqlite = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.groundhog
            hsPkgs.monad-control
            hsPkgs.containers
            hsPkgs.enumerator
            hsPkgs.utf8-string
            hsPkgs.pool
          ];
          libs = pkgs.lib.optional _flags.systemlib pkgs.sqlite3;
        };
      };
    }