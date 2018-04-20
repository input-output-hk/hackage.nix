{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "blaze-markup";
          version = "0.8.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
        author = "Jasper Van der Jeugt, Simon Meier, Deepak Jois";
        homepage = "http://jaspervdj.be/blaze";
        url = "";
        synopsis = "A blazingly fast markup combinator library for Haskell";
        description = "Core modules of a blazingly fast markup combinator library for the Haskell\nprogramming language. The Text.Blaze module is a good\nstarting point, as well as this tutorial:\n<http://jaspervdj.be/blaze/tutorial.html>.";
        buildType = "Simple";
      };
      components = {
        blaze-markup = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
        tests = {
          blaze-markup-tests = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.containers
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.text
              hsPkgs.bytestring
            ];
          };
        };
      };
    }