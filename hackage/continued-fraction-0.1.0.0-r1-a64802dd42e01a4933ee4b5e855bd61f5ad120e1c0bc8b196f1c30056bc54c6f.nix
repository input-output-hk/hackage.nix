{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "continued-fraction";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/continued-fractions#readme";
      url = "";
      synopsis = "Types and functions for working with continued fractions in Haskell";
      description = "This package provides facilities for working with both continued fractions\nand rational approximants. It uses lists internally, so it will probably\nnot be fast if you need large convergents.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.recursion-schemes)
        ];
      };
      tests = {
        "continued-fractions-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.continued-fraction)
            (hsPkgs.hspec)
          ];
        };
      };
      benchmarks = {
        "continued-fractions-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.continued-fraction)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }