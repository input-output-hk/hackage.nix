{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      splitbase = true;
      base4 = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "fft";
        version = "0.1.3";
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
        depends  = (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.carray)
            (hsPkgs.storable-complex)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.carray)
            (hsPkgs.storable-complex)
          ]) ++ (if flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
        libs = [ (pkgs."fftw3") ];
      };
    };
  }