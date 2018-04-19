{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      templatehaskell = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "QuickCheck";
          version = "2.9";
        };
        license = "BSD-3-Clause";
        copyright = "2000-2016 Koen Claessen, 2006-2008 Björn Bringert, 2009-2016 Nick Smallbone";
        maintainer = "QuickCheck developers <quickcheck@projects.haskell.org>";
        author = "Koen Claessen <koen@chalmers.se>";
        homepage = "https://github.com/nick8325/quickcheck";
        url = "";
        synopsis = "Automatic testing of Haskell programs";
        description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in\nthe form of properties which functions should satisfy, and\nQuickCheck then tests that the properties hold in a large number\nof randomly generated cases.\n\nSpecifications are expressed in\nHaskell, using combinators defined in the QuickCheck library.\nQuickCheck provides combinators to define properties, observe\nthe distribution of test data, and define test\ndata generators.\n\nYou can find a (slightly out-of-date but useful) manual at\n<http://www.cse.chalmers.se/~rjmh/QuickCheck/manual.html>.";
        buildType = "Simple";
      };
      components = {
        QuickCheck = {
          depends  = (((((([
            hsPkgs.base
            hsPkgs.random
            hsPkgs.containers
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.transformers) ++ pkgs.lib.optional (compiler.isGhc && _flags.templatehaskell) hsPkgs.template-haskell) ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.ghc-prim) ++ pkgs.lib.optional compiler.isGhc hsPkgs.tf-random) ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.nats) ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.semigroups) ++ pkgs.lib.optionals compiler.isUhc [
            hsPkgs.old-time
            hsPkgs.old-locale
          ];
        };
        tests = {
          test-quickcheck = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.template-haskell
              hsPkgs.test-framework
            ];
          };
          test-quickcheck-gcoarbitrary = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.ghc-prim;
          };
          test-quickcheck-generators = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
            ];
          };
          test-quickcheck-gshrink = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
            ] ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.ghc-prim;
          };
        };
      };
    }