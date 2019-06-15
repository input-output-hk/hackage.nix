{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bmi2 = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-rankselect"; version = "0.13.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-rankselect#readme";
      url = "";
      synopsis = "Rank-select";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.hw-balancedparens)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-rankselect-base)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "hw-rankselect" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.generic-lens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.lens)
            (hsPkgs.mmap)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.vector)
            (hsPkgs.hw-rankselect)
            ];
          };
        };
      tests = {
        "hw-rankselect-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.directory)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.mmap)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.hw-rankselect)
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
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.criterion)
            (hsPkgs.directory)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.mmap)
            (hsPkgs.resourcet)
            (hsPkgs.vector)
            (hsPkgs.hw-rankselect)
            ];
          };
        };
      };
    }