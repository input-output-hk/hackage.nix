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
      specVersion = "1.22";
      identifier = {
        name = "hw-rankselect-base";
        version = "0.2.0.0";
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
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
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