{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      extensibleexceptions = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "QuickCheck";
          version = "2.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Koen Claessen <koen@chalmers.se>";
        maintainer = "QuickCheck developers <quickcheck@projects.haskell.org>";
        author = "Koen Claessen <koen@chalmers.se>";
        homepage = "http://www.cs.chalmers.se/~koen";
        url = "";
        synopsis = "Automatic testing of Haskell programs";
        description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in\nthe form of properties which functions should satisfy, and\nQuickCheck then tests that the properties hold in a large number\nof randomly generated cases.\n\nSpecifications are expressed in\nHaskell, using combinators defined in the QuickCheck library.\nQuickCheck provides combinators to define properties, observe\nthe distribution of test data, and define test\ndata generators.";
        buildType = "Simple";
      };
      components = {
        QuickCheck = {
          depends  = (([
            hsPkgs.mtl
          ] ++ (if _flags.extensibleexceptions
            then [
              hsPkgs.base
              hsPkgs.random
            ]
            else if _flags.splitbase
              then [
                hsPkgs.base
                hsPkgs.random
              ]
              else [
                hsPkgs.base
              ])) ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc) ++ pkgs.lib.optional compiler.isGhc hsPkgs.extensible-exceptions;
        };
      };
    }