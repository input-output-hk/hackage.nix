{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "accelerate-fftw";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://hub.darcs.net/thielema/accelerate-fftw/";
        url = "";
        synopsis = "Accelerate frontend to the FFTW library (Fourier transform)";
        description = "An interface to the Fastest Fourier Transform in the West (FFTW)\nfor the @accelerate@ framework.";
        buildType = "Simple";
      };
      components = {
        "accelerate-fftw" = {
          depends  = [
            hsPkgs.fft
            hsPkgs.carray
            hsPkgs.storable-complex
            hsPkgs.accelerate-io
            hsPkgs.accelerate
            hsPkgs.base
          ];
        };
      };
    }