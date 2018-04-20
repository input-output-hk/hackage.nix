{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "chr-pretty";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "atzedijkstra@gmail.com";
        author = "Atze Dijkstra";
        homepage = "https://github.com/atzedijkstra/chr";
        url = "";
        synopsis = "Pretty printing for chr library";
        description = "Pretty printing for chr library, a simplified implementation for the pretty printing API from uulib";
        buildType = "Simple";
      };
      components = {
        chr-pretty = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }