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
        name = "hw-excess";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-excess#readme";
      url = "";
      synopsis = "Excess";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hw-excess" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-prim)
          (hsPkgs.vector)
          (hsPkgs.hw-rankselect-base)
          (hsPkgs.safe)
        ];
      };
      tests = {
        "hw-excess-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.vector)
            (hsPkgs.hspec)
            (hsPkgs.hw-excess)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }