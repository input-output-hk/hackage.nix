{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      avx2 = false;
      bmi2 = false;
      sse42 = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hw-dsv";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/hw-dsv#readme";
      url = "";
      synopsis = "Unbelievably fast streaming DSV file parser";
      description = "Please see the README on Github at <https://github.com/haskell-works/hw-dsv#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bits-extra)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-rankselect)
          (hsPkgs.hw-rankselect-base)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-simd)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0.1")) [
          (hsPkgs.transformers)
          (hsPkgs.semigroups)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "hw-dsv" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-simd)
            (hsPkgs.vector)
            (hsPkgs.hw-dsv)
            (hsPkgs.hedgehog)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.resourcet)
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0.1")) [
            (hsPkgs.transformers)
            (hsPkgs.semigroups)
          ];
        };
      };
      tests = {
        "hw-dsv-space" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-simd)
            (hsPkgs.vector)
            (hsPkgs.cassava)
            (hsPkgs.hw-dsv)
            (hsPkgs.weigh)
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0.1")) [
            (hsPkgs.transformers)
            (hsPkgs.semigroups)
          ];
        };
        "hw-dsv-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-simd)
            (hsPkgs.vector)
            (hsPkgs.directory)
            (hsPkgs.hw-dsv)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.text)
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0.1")) [
            (hsPkgs.transformers)
            (hsPkgs.semigroups)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-simd)
            (hsPkgs.vector)
            (hsPkgs.cassava)
            (hsPkgs.criterion)
            (hsPkgs.directory)
            (hsPkgs.hw-dsv)
            (hsPkgs.mmap)
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0.1")) [
            (hsPkgs.transformers)
            (hsPkgs.semigroups)
          ];
        };
      };
    };
  }