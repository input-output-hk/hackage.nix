{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      avx2 = false;
      bmi2 = false;
      sse42 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hw-simd";
          version = "0.0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2018 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "https://github.com/haskell-works/hw-simd#readme";
        url = "";
        synopsis = "SIMD library";
        description = "Please see the README on Github at <https://github.com/haskell-works/hw-simd#readme>";
        buildType = "Simple";
      };
      components = {
        "hw-simd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bits-extra
            hsPkgs.bytestring
            hsPkgs.deepseq
            hsPkgs.hw-bits
            hsPkgs.hw-rankselect
            hsPkgs.hw-rankselect-base
            hsPkgs.hw-prim
            hsPkgs.vector
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0.1")) [
            hsPkgs.transformers
            hsPkgs.semigroups
          ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
        tests = {
          "hw-simd-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bits-extra
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.hw-bits
              hsPkgs.hw-rankselect
              hsPkgs.hw-rankselect-base
              hsPkgs.hw-prim
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.hw-simd
              hsPkgs.hedgehog
              hsPkgs.hspec
              hsPkgs.hw-hspec-hedgehog
              hsPkgs.text
            ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0.1")) [
              hsPkgs.transformers
              hsPkgs.semigroups
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bits-extra
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.hw-bits
              hsPkgs.hw-rankselect
              hsPkgs.hw-rankselect-base
              hsPkgs.hw-prim
              hsPkgs.vector
              hsPkgs.cassava
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.directory
              hsPkgs.hw-simd
              hsPkgs.mmap
            ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0.1")) [
              hsPkgs.transformers
              hsPkgs.semigroups
            ];
          };
        };
      };
    }