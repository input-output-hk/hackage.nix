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
      specVersion = "1.10";
      identifier = {
        name = "bit-stream";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Bodigrim";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Bodigrim";
      homepage = "https://github.com/Bodigrim/bit-stream#readme";
      url = "";
      synopsis = "Lazy, infinite, compact stream of 'Bool' with O(1) indexing.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "bit-stream" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "find-foo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bit-stream)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bit-stream)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bit-stream)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }