{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { bmi2 = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hw-rankselect-base";
        version = "0.3.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-rankselect-base#readme";
      url = "";
      synopsis = "Rank-select base";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bits-extra)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-int)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-string-parse)
          (hsPkgs.safe)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "hw-rankselect-base-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.criterion)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }