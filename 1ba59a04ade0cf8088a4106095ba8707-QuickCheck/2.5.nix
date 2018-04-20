{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base3 = true;
      base4 = true;
      templatehaskell = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "QuickCheck";
          version = "2.5";
        };
        license = "BSD-3-Clause";
        copyright = "2000-2012 Koen Claessen, 2006-2008 BjÃ¶rn Bringert, 2009-2012 Nick Smallbone";
        maintainer = "QuickCheck developers <quickcheck@projects.haskell.org>";
        author = "Koen Claessen <koen@chalmers.se>";
        homepage = "http://code.haskell.org/QuickCheck";
        url = "";
        synopsis = "Automatic testing of Haskell programs";
        description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in\nthe form of properties which functions should satisfy, and\nQuickCheck then tests that the properties hold in a large number\nof randomly generated cases.\n\nSpecifications are expressed in\nHaskell, using combinators defined in the QuickCheck library.\nQuickCheck provides combinators to define properties, observe\nthe distribution of test data, and define test\ndata generators.";
        buildType = "Simple";
      };
      components = {
        QuickCheck = {
          depends  = (((if _flags.base4
            then [
              hsPkgs.base
              hsPkgs.random
            ]
            else if _flags.base3
              then [
                hsPkgs.base
                hsPkgs.random
              ]
              else [
                hsPkgs.base
              ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.ghc) ++ pkgs.lib.optional compiler.isGhc hsPkgs.extensible-exceptions) ++ pkgs.lib.optional (compiler.isGhc && (_flags.templatehaskell && compiler.isGhc)) hsPkgs.template-haskell;
        };
      };
    }