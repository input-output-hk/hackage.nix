{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { standalone = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hs-zstd"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-present, Facebook, Inc. All rights reserved.; 2019 Luis Pedro Coelho";
      maintainer = "luis@luispedro.org";
      author = "Bryan O'Sullivan";
      homepage = "https://github.com/facebookexperimental/hs-zstd";
      url = "";
      synopsis = "Haskell bindings to the Zstandard compression algorithm";
      description = "A fast lossless compression algorithm, targeting real-time\ncompression scenarios at zlib-level and better compression ratios.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          ];
        libs = (pkgs.lib).optional (!flags.standalone) (pkgs."zstd");
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.hs-zstd)
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.ghc-prim)
            (hsPkgs.hs-zstd)
            (hsPkgs.zlib)
            ];
          };
        };
      };
    }