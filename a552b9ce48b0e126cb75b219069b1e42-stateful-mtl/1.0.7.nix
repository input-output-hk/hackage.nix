{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "stateful-mtl";
          version = "1.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "wasserman.louis@gmail.com";
        author = "Louis Wasserman";
        homepage = "";
        url = "";
        synopsis = "Typeclass instances for monad transformer stacks with an ST thread at the bottom.";
        description = "A MonadST type class, instances, and some helpful monad functions.";
        buildType = "Simple";
      };
      components = {
        stateful-mtl = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.MaybeT
          ];
        };
      };
    }