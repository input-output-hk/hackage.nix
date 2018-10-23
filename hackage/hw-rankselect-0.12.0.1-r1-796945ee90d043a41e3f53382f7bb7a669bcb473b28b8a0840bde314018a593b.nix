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
        version = "0.12.0.1";
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.lens)
            (hsPkgs.mmap)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "hw-rankselect-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.mmap)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
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
            (hsPkgs.vector)
          ];
        };
      };
    };
  }