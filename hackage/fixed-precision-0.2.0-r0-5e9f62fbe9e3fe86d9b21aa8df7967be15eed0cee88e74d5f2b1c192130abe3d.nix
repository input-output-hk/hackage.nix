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
        name = "fixed-precision";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://patch-tag.com/r/ekmett/fixed-precision";
      url = "";
      synopsis = "Fixed Precision Arithmetic";
      description = "Numeric instances for MPFR that use the \\\"Implicit Configurations\\\" from\n<http://www.cs.rutgers.edu/~ccshan/prepose/prepose.pdf>\nto choose 'Rounding' and 'Precision'.";
      buildType = "Simple";
    };
    components = {
      "fixed-precision" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.reflection)
          (hsPkgs.hmpfr)
          (hsPkgs.integer-gmp)
          (hsPkgs.tagged)
        ];
      };
    };
  }