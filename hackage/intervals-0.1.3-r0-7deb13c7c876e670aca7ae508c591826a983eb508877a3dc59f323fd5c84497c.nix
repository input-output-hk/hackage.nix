{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "intervals";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://patch-tag.com/r/ekmett/intervals";
      url = "";
      synopsis = "Interval Arithmetic";
      description = "A 'Numeric.Interval.Interval' is a closed, convex set of floating point values.\n\nThis package is careful to manage the rounding direction of each floating point\noperation to ensure that the resulting interval is conservative. Effectively the lower bound of each computation is always rounded down, and the upper bound is rounded up.\n\nThe correctness of this package relies on the correctness of the underlying libm's handling of rounding modes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.numeric-extras)
          (hsPkgs.rounding)
        ];
      };
    };
  }