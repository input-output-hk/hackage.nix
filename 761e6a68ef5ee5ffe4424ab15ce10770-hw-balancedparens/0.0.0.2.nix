{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.22";
      identifier = {
        name = "hw-balancedparens";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-balancedparens#readme";
      url = "";
      synopsis = "Balanced parentheses";
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
          (hsPkgs.vector)
        ];
      };
      tests = {
        "hw-balancedparens-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
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
            (hsPkgs.criterion)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }