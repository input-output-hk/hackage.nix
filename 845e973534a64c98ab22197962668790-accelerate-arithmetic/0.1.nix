{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "accelerate-arithmetic";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://hub.darcs.net/thielema/accelerate-arithmetic/";
        url = "";
        synopsis = "Linear algebra and interpolation using the Accelerate framework";
        description = "Linear algebra and interpolation via the @accelerate@ package.\nThis can be used for computations on GPUs\nbut it does not contain processor optimizations\nor optimizations for CUDA.";
        buildType = "Simple";
      };
      components = {
        accelerate-arithmetic = {
          depends  = [
            hsPkgs.accelerate-utility
            hsPkgs.accelerate
            hsPkgs.utility-ht
            hsPkgs.QuickCheck
            hsPkgs.base
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.accelerate-arithmetic
              hsPkgs.accelerate-utility
              hsPkgs.accelerate
              hsPkgs.QuickCheck
              hsPkgs.base
            ];
          };
        };
      };
    }