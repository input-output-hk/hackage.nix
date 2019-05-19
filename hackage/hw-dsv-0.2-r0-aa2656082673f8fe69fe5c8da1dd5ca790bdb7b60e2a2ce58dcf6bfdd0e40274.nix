{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bmi2 = false; sse42 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-dsv"; version = "0.2"; };
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
          (hsPkgs.hw-bits)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-rankselect)
          (hsPkgs.hw-rankselect-base)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0.1")) [
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "hw-dsv" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.hedgehog)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-dsv)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.resourcet)
            (hsPkgs.vector)
            ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0.1")) [
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            ];
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
            (hsPkgs.hw-bits)
            (hsPkgs.hw-dsv)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.vector)
            (hsPkgs.weigh)
            ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0.1")) [
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        "hw-dsv-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bits-extra)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-dsv)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.text)
            (hsPkgs.vector)
            ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0.1")) [
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
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
            (hsPkgs.hw-bits)
            (hsPkgs.hw-dsv)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.mmap)
            (hsPkgs.vector)
            ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0.1")) [
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }