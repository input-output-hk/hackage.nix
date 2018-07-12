{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clumpiness";
          version = "0.17.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "gs394@drexel.edu";
        author = "Gregory Schwartz";
        homepage = "";
        url = "";
        synopsis = "Calculate the clumpiness of leaf properties in a tree";
        description = "";
        buildType = "Simple";
      };
      components = {
        "clumpiness" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.tree-fun
          ];
        };
      };
    }