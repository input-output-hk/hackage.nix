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
        name = "data-interval";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Interval arithmetic for both open and closed intervals";
      description = "Unlike the intervals package (<http://hackage.haskell.org/package/intervals>),\nthis package provides both open and closed intervals and is intended to be used\nwith Rational.\n\nChanges in 0.4.0\n\n* add simplestRationalWithin :: RealFrac r => Interval r -> Maybe Rational";
      buildType = "Simple";
    };
    components = {
      "data-interval" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lattices)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
        ];
      };
      tests = {
        "TestInterval" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.data-interval)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-th)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }