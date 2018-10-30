{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      splitbase = true;
      base4 = true;
    };
    package = {
      specVersion = "1.14";
      identifier = {
        name = "fft";
        version = "0.1.8";
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
      "library" = {
        depends  = ([
          (hsPkgs.carray)
          (hsPkgs.storable-complex)
          (hsPkgs.ix-shapable)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
          ]
          else [
            (hsPkgs.base)
          ])) ++ (if flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
        pkgconfig = [
          (pkgconfPkgs.fftw3f)
          (pkgconfPkgs.fftw3)
        ];
      };
      tests = {
        "test-fft" = {
          depends  = [
            (hsPkgs.fft)
            (hsPkgs.carray)
            (hsPkgs.storable-complex)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
          ];
        };
      };
    };
  }