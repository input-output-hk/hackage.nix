{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "MonadRandom";
          version = "0.4";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Brent Yorgey <byorgey@gmail.com>";
        author = "Cale Gibbard and others";
        homepage = "";
        url = "";
        synopsis = "Random-number generation monad.";
        description = "Support for computations which consume random values.";
        buildType = "Simple";
      };
      components = {
        MonadRandom = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.mtl
            hsPkgs.random
          ];
        };
      };
    }