{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unliftio-core";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2017 FP Complete";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman, Francesco Mazzoli";
        homepage = "https://github.com/fpco/monad-unlift/tree/master/unliftio-core#readme";
        url = "";
        synopsis = "The MonadUnliftIO typeclass for unlifting monads to IO";
        description = "Please see the README.md file for details";
        buildType = "Simple";
      };
      components = {
        unliftio-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }