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
        name = "exp-cache";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2018 Chris Coffey";
      maintainer = "chris@foldl.io";
      author = "Chris Coffey";
      homepage = "https://github.com/ChrisCoffey/exp-cache#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/ChrisCoffey/exp-cache#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.psqueues)
          (hsPkgs.array)
          (hsPkgs.random)
        ];
      };
      exes = {
        "exp-cache-benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.exp-cache)
            (hsPkgs.criterion)
            (hsPkgs.random)
          ];
        };
      };
      tests = {
        "exp-cache-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.exp-cache)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.random)
          ];
        };
      };
    };
  }