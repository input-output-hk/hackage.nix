{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hw-balancedparens";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-balancedparens#readme";
      url = "";
      synopsis = "Balanced parentheses";
      description = "Balanced parentheses.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-prim)
          (hsPkgs.vector)
          (hsPkgs.hw-excess)
          (hsPkgs.hw-rankselect-base)
        ];
      };
      tests = {
        "hw-balancedparens-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.vector)
            (hsPkgs.hspec)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.vector)
            (hsPkgs.criterion)
            (hsPkgs.hw-balancedparens)
          ];
        };
      };
    };
  }