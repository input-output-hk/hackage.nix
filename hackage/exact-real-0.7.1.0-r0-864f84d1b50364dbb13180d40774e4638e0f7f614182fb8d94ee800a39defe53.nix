{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "exact-real";
        version = "0.7.1.0";
      };
      license = "MIT";
      copyright = "2015 Joe Hermaszewski";
      maintainer = "Joe Hermaszewski <keep.it.real@monoid.al>";
      author = "Joe Hermaszewski";
      homepage = "http://github.com/expipiplus1/exact-real";
      url = "";
      synopsis = "Exact real arithmetic";
      description = "A type to represent exact real number using a fast binary Cauchy sequence";
      buildType = "Simple";
    };
    components = {
      "exact-real" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.integer-gmp)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.groups)
            (hsPkgs.tasty)
            (hsPkgs.tasty-th)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.checkers)
            (hsPkgs.random)
            (hsPkgs.exact-real)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }