{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = {
        name = "hw-balancedparens";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-balancedparens#readme";
      url = "";
      synopsis = "Conduits for tokenizing streams.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hw-balancedparens" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-excess)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-rankselect-base)
          (hsPkgs.hw-string-parse)
          (hsPkgs.safe)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "hw-balancedparens-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hw-balancedparens)
          ];
        };
      };
      tests = {
        "hw-balancedparens-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.QuickCheck)
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
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.mmap)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }