{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "effective-aspects-mzv";
        version = "0.1.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Ismael FIgueroa, Nicolas Tabareau and Éric Tanter";
      maintainer = "ifigueroap@gmail.com";
      author = "Ismael Figueroa, Nicolas Tabareau and Éric Tanter";
      homepage = "http://pleiad.cl/EffectiveAspects";
      url = "";
      synopsis = "A monadic embedding of aspect oriented programming, using \"Monads, Zippers and Views\" instead of mtl.";
      description = "A monadic embedding of aspect oriented programming, similar to AspectJ";
      buildType = "Simple";
    };
    components = {
      "effective-aspects-mzv" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashtables)
          (hsPkgs.mzv)
          (hsPkgs.QuickCheck)
          (hsPkgs.HUnit)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "Main" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hashtables)
            (hsPkgs.mzv)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.ghc-prim)
            (hsPkgs.Cabal)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }