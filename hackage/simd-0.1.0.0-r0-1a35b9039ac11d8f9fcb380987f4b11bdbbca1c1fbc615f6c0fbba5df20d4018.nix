{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "simd"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike Izbicki";
      homepage = "http://github.com/mikeizbicki/simd";
      url = "";
      synopsis = "simple interface to GHC's SIMD instructions";
      description = "SIMD (Single Instruction Multiple Data) CPU instructions provide a simple\nand fast way to parallelize numeric computations.   GHC 7.8 provides primops\nthat let us access these instructions.  This package wraps thos primops in\na more user friendly form.\n\nThe API is in two parts.  First, it provides a thin wrapper around the primops\nin the same style as the \"Data.Primitive\" API.  Second, it provides an interface\nfor working with vectors in parallel.  This interface consists of Unbox and\nStorable instances for the SIMD types, and efficient methods for converting\nbetween a SIMD Vector and a standard vector.\n\nAt the github repository, there is <https://github.com/mikeizbicki/simd/blob/master/examples/criterion-distance.hs an example>\nthat uses criterion to measure the performance of calculating the l2 distance\nbetween vectors.  There are many different versions of this function in the example.\nEach is written in different styles that demonstrate correct (and incorrect!) use of the\nlibrary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.vector)
          ];
        };
      };
    }