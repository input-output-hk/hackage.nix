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
        name = "abstract-deque-tests";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan R. Newton";
      homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
      url = "";
      synopsis = "A test-suite for any queue or double-ended queue satisfying an interface";
      description = "This package provides tests that can be used with any queue implementation\nthat satisfies the `abstract-deque` interface.";
      buildType = "Simple";
    };
    components = {
      "abstract-deque-tests" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.abstract-deque)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.time)
          (hsPkgs.HUnit)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
        ];
      };
      tests = {
        "test-abstract-deque" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.abstract-deque)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.time)
          ];
        };
      };
    };
  }