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
      specVersion = "1.10";
      identifier = {
        name = "fast-digits";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/fast-digits";
      url = "";
      synopsis = "The fast library for integer-to-digits conversion.";
      description = "Convert an integer to digits and back.\nUsually this library is twice as fast as \"Data.Digits\".\nFor small bases and long numbers it may be up to 30 times faster.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.integer-gmp)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            (hsPkgs.digits)
            (hsPkgs.fast-digits)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.digits)
            (hsPkgs.fast-digits)
          ];
        };
      };
    };
  }