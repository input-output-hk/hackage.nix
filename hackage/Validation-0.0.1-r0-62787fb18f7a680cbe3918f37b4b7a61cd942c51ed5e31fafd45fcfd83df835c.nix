{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Validation";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tony Morris, Nick Partridge";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>, Nick Partridge";
      homepage = "";
      url = "";
      synopsis = "A data-type like Either but with an accumulating Applicative";
      description = "A data-type like Either but with an accumulating Applicative";
      buildType = "Simple";
    };
    components = {
      "Validation" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Semigroup)
          (hsPkgs.category-extras)
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.test-framework-quickcheck2)
        ];
      };
    };
  }