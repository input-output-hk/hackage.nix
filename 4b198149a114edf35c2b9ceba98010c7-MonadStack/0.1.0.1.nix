{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "MonadStack";
          version = "0.1.0.1";
        };
        license = "BSD-2-Clause";
        copyright = "";
        maintainer = "bhurt42@gmail.com";
        author = "Brian Hurt";
        homepage = "https://github.com/bhurt/MonadStack";
        url = "";
        synopsis = "Generalizing lift to monad stacks";
        description = "";
        buildType = "Simple";
      };
      components = {
        "MonadStack" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }