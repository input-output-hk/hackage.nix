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
        specVersion = "1.8";
        identifier = {
          name = "QuickCheck";
          version = "2.7.2";
        };
        license = "BSD-3-Clause";
        copyright = "2000-2014 Koen Claessen, 2006-2008 Björn Bringert, 2009-2014 Nick Smallbone";
        maintainer = "QuickCheck developers <quickcheck@projects.haskell.org>";
        author = "Koen Claessen <koen@chalmers.se>";
        homepage = "http://code.haskell.org/QuickCheck";
        url = "";
        synopsis = "Automatic testing of Haskell programs";
        description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in\nthe form of properties which functions should satisfy, and\nQuickCheck then tests that the properties hold in a large number\nof randomly generated cases.\n\nSpecifications are expressed in\nHaskell, using combinators defined in the QuickCheck library.\nQuickCheck provides combinators to define properties, observe\nthe distribution of test data, and define test\ndata generators.";
        buildType = "Simple";
      };
      components = {
        "QuickCheck" = {
          depends  = ((((((if _flags.base4
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
              ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.12" && _flags.templatehaskell) hsPkgs.template-haskell) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.7" && (compiler.isGhc && compiler.version.lt "6.13")) hsPkgs.ghc) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9" && (compiler.isGhc && compiler.version.lt "7.0")) hsPkgs.extensible-exceptions) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2" && (compiler.isGhc && compiler.version.lt "7.6")) hsPkgs.ghc-prim) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7" && _flags.base4) hsPkgs.tf-random) ++ pkgs.lib.optionals (compiler.isUhc && true) [
            hsPkgs.old-time
            hsPkgs.old-locale
          ];
        };
        tests = {
          "test-quickcheck" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
              hsPkgs.test-framework
            ];
          };
        };
      };
    }