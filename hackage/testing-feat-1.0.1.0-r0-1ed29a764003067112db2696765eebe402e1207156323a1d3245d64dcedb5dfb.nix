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
      specVersion = "1.6";
      identifier = {
        name = "testing-feat";
        version = "1.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Jonas Duregård";
      maintainer = "jonas.duregard@gmail.com";
      author = "Jonas Duregård";
      homepage = "https://github.com/JonasDuregard/testing-feat";
      url = "";
      synopsis = "Functional Enumeration of Algebraic Types";
      description = "Feat (Functional Enumeration of Algebraic Types) provides\nenumerations as functions from natural numbers to values\n(similar to @toEnum@ but for any algebraic data type). This\ncan be used for SmallCheck-style systematic testing,\nQuickCheck style random testing, and hybrids of the two.\n\nThe enumerators are defined in a very boilerplate manner\nand there is a Template Haskell script for deriving the\nclass instance for most types.\n\"Test.Feat\" contain a subset of the other modules that\nshould be sufficient for most test usage. There\nare some small and large example in the tar\nball.\n\nThe generators are provided by the size-based package. This means other libraries that implement the Sized class can use the same generator definitions. One such is the\n<https://hackage.haskell.org/package/lazy-search lazy-search package>, that uses laziness to search for values and test properties. This is typically a lot faster than Feat for properties that have preconditions (logical implication), but can not be used for random selection of values.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.size-based)
          (hsPkgs.testing-type-modifiers)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
    };
  }