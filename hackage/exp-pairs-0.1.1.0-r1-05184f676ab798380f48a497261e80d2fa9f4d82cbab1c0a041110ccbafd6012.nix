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
        name = "exp-pairs";
        version = "0.1.1.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/exp-pairs";
      url = "";
      synopsis = "Linear programming over exponent pairs";
      description = "Package implements an algorithm to minimize rational objective function over the set of exponent pairs";
      buildType = "Simple";
    };
    components = {
      "exp-pairs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.memoize)
          (hsPkgs.matrix)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            (hsPkgs.exp-pairs)
            (hsPkgs.memoize)
            (hsPkgs.matrix)
          ];
        };
      };
    };
  }