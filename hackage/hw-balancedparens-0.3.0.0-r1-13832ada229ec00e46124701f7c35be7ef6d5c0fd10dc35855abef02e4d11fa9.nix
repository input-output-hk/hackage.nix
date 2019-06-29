{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-balancedparens"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 John Ky";
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
          (hsPkgs.deepseq)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-excess)
          (hsPkgs.hw-fingertree)
          (hsPkgs.hw-prim)
          (hsPkgs.hw-rankselect-base)
          (hsPkgs.vector)
          ];
        };
      sublibs = {
        "hw-balancedparens-gen" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-prim)
            (hsPkgs.vector)
            (hsPkgs.hw-balancedparens)
            ];
          };
        };
      tests = {
        "hw-balancedparens-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-rankselect-base)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-balancedparens-gen)
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
            (hsPkgs.criterion)
            (hsPkgs.hedgehog)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.vector)
            (hsPkgs.hw-balancedparens)
            (hsPkgs.hw-balancedparens-gen)
            ];
          };
        };
      };
    }