{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lxc";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nickolay.kudasov@gmail.com";
        author = "Nickolay Kudasov";
        homepage = "https://github.com/fizruk/lxc";
        url = "";
        synopsis = "High level Haskell bindings to LXC (Linux containers).";
        description = "The library provides Haskell LXC API, wrapping <http://hackage.haskell.org/package/bindings-lxc bindings-lxc package>.";
        buildType = "Simple";
      };
      components = {
        lxc = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-lxc
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
      };
    }