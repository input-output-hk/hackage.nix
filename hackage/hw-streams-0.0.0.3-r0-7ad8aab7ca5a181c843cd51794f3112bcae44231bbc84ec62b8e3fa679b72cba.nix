{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bounds-checking-enabled = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-streams"; version = "0.0.0.3"; };
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
          (hsPkgs.vector)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "hw-streams-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.mmap)
            (hsPkgs.primitive)
            (hsPkgs.vector)
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-streams)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-prim)
            (hsPkgs.mmap)
            (hsPkgs.primitive)
            (hsPkgs.vector)
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            (hsPkgs.criterion)
            (hsPkgs.hw-streams)
            (hsPkgs.mmap)
            ];
          };
        };
      };
    }