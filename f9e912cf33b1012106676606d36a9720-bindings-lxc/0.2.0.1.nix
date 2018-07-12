{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bindings-lxc";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nickolay.kudasov@gmail.com";
        author = "Nickolay Kudasov";
        homepage = "https://github.com/fizruk/bindings-lxc";
        url = "";
        synopsis = "Direct Haskell bindings to LXC (Linux containers) C API.";
        description = "The package provides direct bindings to LXC C API through @bindings-dsl@.\nFor high-level Haskell LXC API see <http://hackage.haskell.org/package/lxc lxc package>.";
        buildType = "Simple";
      };
      components = {
        "bindings-lxc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
          libs = [ pkgs.lxc ];
        };
      };
    }