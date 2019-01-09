{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "bitset-word8"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "2017,2018 Naoto Shimazaki";
      maintainer = "Naoto.Shimazaki@gmail.com";
      author = "Naoto Shimazaki";
      homepage = "https://github.com/nshimaza/bitset-word8#readme";
      url = "";
      synopsis = "Space efficient set of Word8 and some pre-canned sets useful for parsing HTTP";
      description = "Please see the README on GitHub at <https://github.com/nshimaza/bitset-word8#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift-instances)
          ];
        };
      tests = {
        "bitset-word8-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bitset-word8)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.template-haskell)
            (hsPkgs.th-lift-instances)
            ];
          };
        };
      benchmarks = {
        "bitset-word8-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bitset-word8)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.template-haskell)
            (hsPkgs.th-lift-instances)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }