{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "vector-fftw";
          version = "0.1.3.7";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Judah Jacobson, 2010";
        maintainer = "Ben Gamari <ben@smart-cactus.org>";
        author = "Judah Jacobson";
        homepage = "http://hackage.haskell.org/package/vector-fftw";
        url = "";
        synopsis = "A binding to the fftw library for one-dimensional vectors.";
        description = "This package provides bindings to the fftw library for one-dimensional vectors.\nIt provides both high-level functions and more low-level manipulation of fftw plans.\n\nWe provide three different modules which wrap fftw's operations:\n\n- \"Numeric.FFT.Vector.Unnormalized\" contains the raw transforms;\n\n- \"Numeric.FFT.Vector.Invertible\" scales the backwards transforms to be true inverses;\n\n- \"Numeric.FFT.Vector.Unitary\" additionally scales all transforms to preserve the L2 (sum-of-squares) norm of the\ninput.";
        buildType = "Simple";
      };
      components = {
        vector-fftw = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.primitive
            hsPkgs.storable-complex
          ];
          libs = if system.isWindows
            then [ pkgs.fftw3-3 ]
            else [ pkgs.fftw3 ];
        };
      };
    }