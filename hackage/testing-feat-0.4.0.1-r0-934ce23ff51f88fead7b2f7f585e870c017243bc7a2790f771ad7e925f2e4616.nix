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
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Jonas Duregård";
      maintainer = "jonas.duregard@gmail.com";
      author = "Jonas Duregård";
      homepage = "";
      url = "";
      synopsis = "Functional Enumeration of Algebraic Types";
      description = "Feat (Functional Enumeration of Algebraic Types) provides\nenumerations as functions from natural numbers to values\n(similar to @toEnum@ but for any algebraic data type). This\ncan be used for SmallCheck-style systematic testing,\nQuickCheck style random testing, and hybrids of the two.\n\nThe enumerators are defined in a very boilerplate manner\nand there is a Template Haskell script for deriving the\nclass instance for most types.\n\"Test.Feat\" contain a subset of the other modules that\nshould be sufficient for most test usage. There\nare some small and large example in the tar\nball. Builds with haskell-platform-2012-2.0.0 and with ghc-7.6.1.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.tagshare)
        ];
      };
    };
  }