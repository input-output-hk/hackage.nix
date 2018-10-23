{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bounds-checks = true;
      unsafe-checks = false;
      internal-checks = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "accelerate-io";
        version = "0.12.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Manuel M T Chakravarty <chak@cse.unsw.edu.au>";
      author = "Manuel M T Chakravarty,\nGabriele Keller,\nSean Lee,\nTrevor L. McDonell";
      homepage = "http://www.cse.unsw.edu.au/~chak/project/accelerate/";
      url = "";
      synopsis = "Read and write Accelerate arrays in various formats";
      description = "This package provides efficient conversion routines between a range of array types\nand Accelerate arrays.";
      buildType = "Simple";
    };
    components = {
      "accelerate-io" = {
        depends  = [
          (hsPkgs.accelerate)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.repa)
          (hsPkgs.vector)
        ];
      };
    };
  }