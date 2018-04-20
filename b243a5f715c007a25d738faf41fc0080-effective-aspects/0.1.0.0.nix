{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "effective-aspects";
          version = "0.1.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Ismael FIgueroa, Nicolas Tabareau and Éric Tanter";
        maintainer = "ifigueroap@gmail.com";
        author = "Ismael Figueroa, Nicolas Tabareau and Éric Tanter";
        homepage = "http://pleiad.cl/EffectiveAspects";
        url = "";
        synopsis = "A monadic embedding of aspect oriented programming";
        description = "A monadic embedding of aspect oriented programming, similar to AspectJ";
        buildType = "Simple";
      };
      components = {
        effective-aspects = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashtables
            hsPkgs.mtl
            hsPkgs.QuickCheck
            hsPkgs.HUnit
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          Main = {
            depends  = [
              hsPkgs.base
              hsPkgs.hashtables
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.ghc-prim
              hsPkgs.Cabal
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }