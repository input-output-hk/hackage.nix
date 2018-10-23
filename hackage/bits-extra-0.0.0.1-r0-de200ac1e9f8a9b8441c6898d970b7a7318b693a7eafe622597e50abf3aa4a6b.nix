{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { bmi2 = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bits-extra";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2018 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/bits-extra#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/haskell-works/bits-extra#readme>";
      buildType = "Simple";
    };
    components = {
      "bits-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "bits-extra-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.ghc-prim)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.criterion)
            (hsPkgs.ghc-prim)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }