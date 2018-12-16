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
        name = "exact-real";
        version = "0.5.0.0";
      };
      license = "MIT";
      copyright = "2015 Joe Hermaszewski";
      maintainer = "keep.it.real@monoid.al";
      author = "Joe Hermaszewski";
      homepage = "";
      url = "";
      synopsis = "Exact real arithmetic";
      description = "please see readme.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.integer-gmp)
        ];
      };
      tests = {
        "test" = {
          depends = [
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }