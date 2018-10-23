{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "numbers";
        version = "3000.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "Lennart Augustsson";
      homepage = "https://github.com/jwiegley/numbers#readme";
      url = "";
      synopsis = "Various number types";
      description = "Instances of the numerical classes for a variety of\ndifferent numbers: (computable) real numbers,\narbitrary precision fixed numbers,\narbitrary precision floating point numbers,\ndifferentiable numbers, symbolic numbers,\nnatural numbers, interval arithmetic.";
      buildType = "Simple";
    };
    components = {
      "numbers" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "testsuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }