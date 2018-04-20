{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sdr";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Adam Walker";
        maintainer = "adamwalker10@gmail.com";
        author = "Adam Walker";
        homepage = "https://github.com/adamwalker/sdr";
        url = "";
        synopsis = "A software defined radio library";
        description = "Write software defined radio applications in Haskell.\n\nFeatures:\n\n* Signal processing blocks can be chained together using the <https://hackage.haskell.org/package/pipes Pipes> library\n\n* Zero copy design\n\n* Signal processing functions are implemented in both Haskell and C (with SIMD acceleration)\n\n* Can FIR filter, decimate and resample\n\n* Helper functions for FIR filter design using window functions and plotting of the frequency response\n\n* FFTs using <http://www.fftw.org/ FFTW>\n\n* Line and waterfall plots using OpenGL\n\n* FM demodulation\n\n* PulseAudio sound sink\n\n* <http://sdr.osmocom.org/trac/wiki/rtl-sdr rtl-sdr> based radio source supported and other sources are easily added\n\nSee <https://github.com/adamwalker/sdr> for more features and screenshots.\n\nA collection of simple apps that use this library can be found <https://github.com/adamwalker/sdr-apps here>. These include an FM radio receiver, an OpenGL waterfall plotter and an AM radio receiver.";
        buildType = "Simple";
      };
      components = {
        sdr = {
          depends  = [
            hsPkgs.base
            hsPkgs.fftwRaw
            hsPkgs.bytestring
            hsPkgs.pulse-simple
            hsPkgs.pipes
            hsPkgs.pipes-concurrency
            hsPkgs.either
            hsPkgs.time
            hsPkgs.rtlsdr
            hsPkgs.storable-complex
            hsPkgs.pipes-bytestring
            hsPkgs.dynamic-graph
            hsPkgs.array
            hsPkgs.vector
            hsPkgs.tuple
            hsPkgs.OpenGL
            hsPkgs.GLFW-b
            hsPkgs.primitive
            hsPkgs.colour
            hsPkgs.pango
            hsPkgs.containers
            hsPkgs.cairo
            hsPkgs.cereal
            hsPkgs.optparse-applicative
            hsPkgs.Decimal
            hsPkgs.Chart
            hsPkgs.Chart-cairo
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.vector
              hsPkgs.sdr
              hsPkgs.primitive
              hsPkgs.storable-complex
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.vector
              hsPkgs.sdr
              hsPkgs.primitive
              hsPkgs.storable-complex
            ];
          };
        };
      };
    }