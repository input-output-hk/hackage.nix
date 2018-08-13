{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Random123";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Bogdan Opanchuk <bogdan@opanchuk.net>";
      author = "Bogdan Opanchuk <bogdan@opanchuk.net>";
      homepage = "http://github.com/Manticore/haskell-random123";
      url = "";
      synopsis = "Haskell port of Random123 library";
      description = "This is a Haskell port of counter-based random number generators from the Random123 library\n(<http://www.thesalmons.org/john/random123/>) v1.07 (with a minor bugfix).\nThe description of algorithms can be also found in\nSalmon et al., P. Int. C. High. Perform. 16 (2011)\n(<http://dx.doi.org/doi:10.1145/2063384.2063405>).";
      buildType = "Simple";
    };
    components = {
      "Random123" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.data-dword)
          (hsPkgs.random)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.Random123)
          ];
        };
      };
      benchmarks = {
        "test_perf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.criterion)
            (hsPkgs.Random123)
          ];
        };
      };
    };
  }