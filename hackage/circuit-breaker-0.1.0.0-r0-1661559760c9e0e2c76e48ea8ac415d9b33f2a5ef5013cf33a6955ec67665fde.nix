{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "circuit-breaker"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Chris Coffey";
      maintainer = "chris@foldl.io";
      author = "Chris Coffey";
      homepage = "https://github.com/ChrisCoffey/circuit-breaker#readme";
      url = "";
      synopsis = "An implementation of the \"circuit breaker\" pattern to disable repeated calls to a failing system";
      description = "Please see the README on GitHub at <https://github.com/ChrisCoffey/circuit-breaker#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          (hsPkgs.unliftio-core)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "circuit-breaker-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.circuit-breaker)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.unliftio-core)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      tests = {
        "circuit-breaker-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.circuit-breaker)
            (hsPkgs.mtl)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.random)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.unliftio-core)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }