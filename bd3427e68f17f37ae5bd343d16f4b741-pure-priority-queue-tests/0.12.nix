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
      specVersion = "1.2";
      identifier = {
        name = "pure-priority-queue-tests";
        version = "0.12";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brad.larsen@gmail.com";
      author = "Bradford Larsen";
      homepage = "";
      url = "";
      synopsis = "Tests for the pure-priority-queue package";
      description = "This package provides a test program for the\npure-priority-queue package.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pure-priority-queue-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.pure-priority-queue)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework)
          ];
        };
      };
    };
  }