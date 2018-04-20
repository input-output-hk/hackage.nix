{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unliftio-core";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "2017 FP Complete";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman, Francesco Mazzoli";
        homepage = "https://github.com/fpco/unliftio/tree/master/unliftio-core#readme";
        url = "";
        synopsis = "The MonadUnliftIO typeclass for unlifting monads to IO";
        description = "Please see the documentation and README at <https://www.stackage.org/package/unliftio-core>";
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