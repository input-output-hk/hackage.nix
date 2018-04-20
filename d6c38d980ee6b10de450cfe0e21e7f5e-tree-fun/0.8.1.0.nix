{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tree-fun";
          version = "0.8.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "gs394@drexel.edu";
        author = "Gregory Schwartz";
        homepage = "";
        url = "";
        synopsis = "Library for functions pertaining to tree exploration and manipulation";
        description = "";
        buildType = "Simple";
      };
      components = {
        tree-fun = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }