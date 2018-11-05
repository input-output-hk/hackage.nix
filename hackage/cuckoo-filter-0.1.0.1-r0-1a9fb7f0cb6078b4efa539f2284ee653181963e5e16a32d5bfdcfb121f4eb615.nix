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
      specVersion = "1.12";
      identifier = {
        name = "cuckoo-filter";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2018 Chris Coffey";
      maintainer = "chris@foldl.io";
      author = "Chris Coffey";
      homepage = "https://github.com/ChrisCoffey/cuckoo-filter#readme";
      url = "";
      synopsis = "Pure and impure Cuckoo Filter";
      description = "Please see the README on Github at <https://github.com/ChrisCoffey/cuckoo-filter#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.hashable)
        ];
      };
      exes = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.cuckoo-filter)
            (hsPkgs.hashable)
            (hsPkgs.random)
          ];
        };
      };
      tests = {
        "cuckoo-filter-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.cuckoo-filter)
            (hsPkgs.hashable)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }