{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "contiguous"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/contiguous";
      url = "";
      synopsis = "Unified interface for primitive arrays";
      description = "This package provides a typeclass `Contiguous` that offers a\nunified interface to working with `Array`, `SmallArray`,\n`PrimArray`, and `UnliftedArray`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.primitive-unlifted)
          (hsPkgs.deepseq)
          ];
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.contiguous)
            (hsPkgs.primitive)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            ];
          };
        };
      };
    }