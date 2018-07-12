{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "fft";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<jed@59A2.org>";
        author = "Jed Brown";
        homepage = "";
        url = "";
        synopsis = "Bindings to the FFTW library.";
        description = "Bindings to the FFTW library.\n\nProvides high performance discrete fourier transforms in\narbitrary dimensions.  Include transforms of complex data,\nreal data, and real to real transforms.\n";
        buildType = "Simple";
      };
      components = {
        "fft" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.carray
            hsPkgs.storable-complex
          ];
          libs = [ pkgs.fftw3 ];
        };
      };
    }