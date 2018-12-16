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
      specVersion = "1.9.2";
      identifier = {
        name = "refcount";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "benjamin.foppa@gmail.com";
      author = "Ben Foppa";
      homepage = "https://github.com/RobotGymnast/refcount";
      url = "";
      synopsis = "Container with element counts";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hashable)
            (hsPkgs.refcount)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
            (hsPkgs.test-framework)
            (hsPkgs.unordered-containers)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }