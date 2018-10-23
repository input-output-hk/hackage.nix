{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "compactmap";
        version = "0.1.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "bartavelle";
      homepage = "";
      url = "";
      synopsis = "A read-only memory-efficient key-value store.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "compactmap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.compactmap)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }