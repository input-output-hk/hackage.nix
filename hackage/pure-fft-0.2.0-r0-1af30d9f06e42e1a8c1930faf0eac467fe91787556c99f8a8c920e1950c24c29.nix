{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "pure-fft";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Matt Morrow";
      maintainer = "Matt Morrow <morrow@moonpatio.com>";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "Fast Fourier Transform";
      description = "A pure-haskell implementation\nof the radix-2 DIT version of\nthe Cooley-Tukey FFT algorithm.";
      buildType = "Simple";
    };
    components = {
      "pure-fft" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }