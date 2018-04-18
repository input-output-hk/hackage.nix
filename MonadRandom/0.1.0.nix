{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "MonadRandom";
          version = "0.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Eric Kidd <haskell@randomhacks.net>";
        author = "Cale Gibbard and others";
        homepage = "";
        url = "";
        synopsis = "Random-number generation monad.";
        description = "Support for computations which consume random values.";
        buildType = "Custom";
      };
      components = {
        MonadRandom = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }