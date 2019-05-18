{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { avx2 = false; bmi2 = false; sse42 = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-dsv"; version = "0.3.5"; };
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
        depends = ([
          (hsPkgs.base)
          (hsPkgs.bits-extra)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-rankselect)
          (hsPkgs.hw-rankselect-base)
          (hsPkgs.hw-simd)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs.transformers);
        };
      exes = {
        "hw-dsv" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.generic-lens)
            (hsPkgs.ghc-prim)
            (hsPkgs.hedgehog)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.hw-simd)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.resourcet)
            (hsPkgs.vector)
            (hsPkgs.hw-dsv)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs.transformers);
          };
        };
      tests = {
        "hw-dsv-space" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.hw-simd)
            (hsPkgs.vector)
            (hsPkgs.weigh)
            (hsPkgs.hw-dsv)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        "hw-dsv-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.ghc-prim)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.hw-simd)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.hw-dsv)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.ghc-prim)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.hw-simd)
            (hsPkgs.mmap)
            (hsPkgs.vector)
            (hsPkgs.hw-dsv)
            ];
          };
        };
      };
    }