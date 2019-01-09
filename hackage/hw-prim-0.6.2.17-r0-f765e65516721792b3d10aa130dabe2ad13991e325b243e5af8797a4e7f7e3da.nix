{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bounds-checking-enabled = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-prim"; version = "0.6.2.17"; };
      license = "BSD-3-Clause";
      copyright = "2016-2018 John Ky";
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
          (hsPkgs.mmap)
          (hsPkgs.vector)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "hw-prim-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mmap)
            (hsPkgs.vector)
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-prim)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mmap)
            (hsPkgs.vector)
            (hsPkgs.semigroups)
            (hsPkgs.transformers)
            (hsPkgs.criterion)
            (hsPkgs.hw-prim)
            (hsPkgs.mmap)
            ];
          };
        };
      };
    }