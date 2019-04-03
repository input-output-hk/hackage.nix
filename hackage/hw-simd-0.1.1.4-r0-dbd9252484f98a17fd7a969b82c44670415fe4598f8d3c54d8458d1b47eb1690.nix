{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { avx2 = false; bmi2 = false; sse42 = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-simd"; version = "0.1.1.4"; };
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
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.bits-extra)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-rankselect)
          (hsPkgs.hw-rankselect-base)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs.transformers)) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0.1")) [
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      tests = {
        "hw-simd-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.hw-simd)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = ([
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.mmap)
            (hsPkgs.vector)
            (hsPkgs.hw-simd)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs.transformers);
          };
        };
      };
    }