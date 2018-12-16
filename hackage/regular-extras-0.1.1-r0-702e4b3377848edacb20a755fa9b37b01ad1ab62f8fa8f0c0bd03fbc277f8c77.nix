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
      specVersion = "1.2.1";
      identifier = {
        name = "regular-extras";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Universiteit Utrecht";
      maintainer = "generics@haskell.org";
      author = "Jose Pedro Magalhaes,\nSebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Additional functions for regular: arbitrary,\ncoarbitrary, and binary get/put.";
      description = "Additional functions for the regular [1] generic programming library, such\nas arbitrary, coarbitrary, and binary get/put. These are not bundled with the\nlibrary because they introduce dependencies on additional packages.\n\n\\[1] <http://hackage.haskell.org/package/regular>";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.regular)
          (hsPkgs.QuickCheck)
          (hsPkgs.binary)
        ];
      };
    };
  }