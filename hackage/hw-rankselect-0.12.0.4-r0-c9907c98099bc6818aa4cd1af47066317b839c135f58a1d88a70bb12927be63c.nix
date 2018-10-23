{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { bmi2 = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hw-rankselect";
        version = "0.12.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-rankselect#readme";
      url = "";
      synopsis = "Rank-select";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hw-rankselect" = {
        depends  = [
          (hsPkgs.hw-rankselect-base)
          (hsPkgs.vector)
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.hw-balancedparens)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-prim)
        ];
      };
      exes = {
        "hw-rankselect" = {
          depends  = [
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.vector)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.lens)
            (hsPkgs.mmap)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "hw-rankselect-test" = {
          depends  = [
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.vector)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.directory)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.mmap)
            (hsPkgs.transformers)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.vector)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.criterion)
            (hsPkgs.directory)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.mmap)
            (hsPkgs.resourcet)
          ];
        };
      };
    };
  }