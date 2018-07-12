{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      standalone = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zstd";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016-present, Facebook, Inc. All rights reserved.";
        maintainer = "bryano@fb.com";
        author = "Bryan O'Sullivan";
        homepage = "https://github.com/facebookexperimental/hs-zstd";
        url = "";
        synopsis = "Haskell bindings to the Zstandard compression algorithm";
        description = "A fast lossless compression algorithm, targeting real-time\ncompression scenarios at zlib-level and better compression ratios.";
        buildType = "Simple";
      };
      components = {
        "zstd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.ghc-prim
          ];
          libs = pkgs.lib.optional (!_flags.standalone) pkgs.zstd;
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.zstd
            ];
          };
        };
        benchmarks = {
          "benchmarks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.ghc-prim
              hsPkgs.zstd
              hsPkgs.zlib
            ];
          };
        };
      };
    }