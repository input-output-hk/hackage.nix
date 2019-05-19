{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bounds-checking-enabled = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "hw-streams"; version = "0.0.0.10"; };
      license = "BSD-3-Clause";
      copyright = "2016-2018 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-streams#readme";
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
          (hsPkgs.hw-bits)
          (hsPkgs.hw-prim)
          (hsPkgs.mmap)
          (hsPkgs.primitive)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "hw-streams-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.ghc-prim)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-streams)
            (hsPkgs.mmap)
            (hsPkgs.primitive)
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            (hsPkgs.vector)
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
            (hsPkgs.ghc-prim)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.hw-streams)
            (hsPkgs.mmap)
            (hsPkgs.primitive)
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }