{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "random-tree";
          version = "0.6.0.5";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "gs394@drexel.edu";
        author = "Gregory Schwartz";
        homepage = "";
        url = "";
        synopsis = "Create random trees";
        description = "";
        buildType = "Simple";
      };
      components = {
        random-tree = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.mtl
            hsPkgs.MonadRandom
            hsPkgs.lens
            hsPkgs.transformers
            hsPkgs.random-shuffle
            hsPkgs.tree-fun
          ];
        };
      };
    }