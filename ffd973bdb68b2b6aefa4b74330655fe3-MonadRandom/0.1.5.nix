{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "MonadRandom";
          version = "0.1.5";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Eric Kidd <haskell@randomhacks.net>";
        author = "Cale Gibbard and others";
        homepage = "";
        url = "";
        synopsis = "Random-number generation monad.";
        description = "Support for computations which consume random values.";
        buildType = "Simple";
      };
      components = {
        "MonadRandom" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.random
          ];
        };
      };
    }