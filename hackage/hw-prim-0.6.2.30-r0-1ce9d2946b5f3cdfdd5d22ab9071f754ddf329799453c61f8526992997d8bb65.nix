{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bounds-checking-enabled = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-prim"; version = "0.6.2.30"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-prim#readme";
      url = "";
      synopsis = "Primitive functions and data types";
      description = "Primitive functions and data types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.mmap)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.unliftio-core)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "hw-prim-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.mmap)
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.hw-prim)
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
            (hsPkgs.criterion)
            (hsPkgs.mmap)
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.hw-prim)
            ];
          };
        };
      };
    }