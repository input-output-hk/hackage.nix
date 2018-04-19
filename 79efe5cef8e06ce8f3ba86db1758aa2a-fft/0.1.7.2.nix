{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      base4 = true;
      buildtests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fft";
          version = "0.1.7.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jed Brown <jed@59A2.org>, Henning Thielemann <fft@henning-thielemann.de>";
        author = "Jed Brown";
        homepage = "";
        url = "";
        synopsis = "Bindings to the FFTW library.";
        description = "Bindings to the FFTW library.\n\nProvides high performance discrete fourier transforms in\narbitrary dimensions.  Include transforms of complex data,\nreal data, and real to real transforms.\n";
        buildType = "Simple";
      };
      components = {
        fft = {
          depends  = (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.carray
              hsPkgs.storable-complex
              hsPkgs.ix-shapable
            ]
            else [
              hsPkgs.base
              hsPkgs.carray
              hsPkgs.storable-complex
              hsPkgs.ix-shapable
            ]) ++ (if _flags.base4
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ]);
        };
        exes = {
          test-fft = {
            depends  = pkgs.lib.optional _flags.buildtests hsPkgs.QuickCheck;
          };
        };
      };
    }