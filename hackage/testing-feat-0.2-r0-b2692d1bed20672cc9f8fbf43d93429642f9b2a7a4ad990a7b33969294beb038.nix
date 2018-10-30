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
      specVersion = "1.2";
      identifier = {
        name = "testing-feat";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Jonas Duregård";
      maintainer = "jonas.duregard@gmail.com";
      author = "Jonas Duregård";
      homepage = "";
      url = "";
      synopsis = "Functional enumeration for systematic and random testing";
      description = "Feat (Functional Enumeration of Abstract Types)\nprovides an enumeration as a function from natural\nnumbers to values (similar to @toEnum@). This can be used\nboth for SmallCheck-style systematic testing and QuickCheck\nstyle random testing, and hybrids of the two.\n\nThe enumerators are defined in a very boilerplate manner\nand there is a Template Haskell script for deriving the\nclass instance for most types.\n\"Test.Feat\" contain a subset of the other modules that\nshould be sufficient for most test usage. There\nare two (somewhat similar) large scale example in the tar\nball: testing the Template Haskell pretty printer and\ntesting haskell-src-exts.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.containers)
          (hsPkgs.data-memocombinators)
        ];
      };
    };
  }