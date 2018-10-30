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
        name = "mutable-containers";
        version = "0.1.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/mutable-containers";
      url = "";
      synopsis = "Abstactions and concrete implementations of mutable containers";
      description = "See docs and README at <http://www.stackage.org/package/mutable-containers>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.mono-traversable)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mutable-containers)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            (hsPkgs.primitive)
            (hsPkgs.containers)
          ];
        };
      };
      benchmarks = {
        "deque" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mutable-containers)
            (hsPkgs.criterion)
            (hsPkgs.containers)
          ];
        };
        "ref" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mutable-containers)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }