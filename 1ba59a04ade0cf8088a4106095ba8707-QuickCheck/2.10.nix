{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      templatehaskell = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "QuickCheck";
          version = "2.10";
        };
        license = "BSD-3-Clause";
        copyright = "2000-2017 Koen Claessen, 2006-2008 Björn Bringert, 2009-2017 Nick Smallbone";
        maintainer = "Nick Smallbone <nick@smallbone.se>; see also QuickCheck mailing list (https://groups.google.com/forum/#!forum/haskell-quickcheck)";
        author = "Koen Claessen <koen@chalmers.se>";
        homepage = "https://github.com/nick8325/quickcheck";
        url = "";
        synopsis = "Automatic testing of Haskell programs";
        description = "QuickCheck is a library for random testing of program properties.\n\nThe programmer provides a specification of the program, in the form of\nproperties which functions should satisfy, and QuickCheck then tests that the\nproperties hold in a large number of randomly generated cases.\n\nSpecifications are expressed in Haskell, using combinators defined in the\nQuickCheck library. QuickCheck provides combinators to define properties,\nobserve the distribution of test data, and define test data generators.\n\nThe <http://www.cse.chalmers.se/~rjmh/QuickCheck/manual.html official QuickCheck manual>\nexplains how to write generators and properties;\nit is out-of-date in some details but still full of useful advice.\n\nA user of QuickCheck has written an unofficial, but detailed, tutorial which\nyou can find at\n<https://begriffs.com/posts/2017-01-14-design-use-quickcheck.html>.";
        buildType = "Simple";
      };
      components = {
        QuickCheck = {
          depends  = (((([
            hsPkgs.base
            hsPkgs.random
            hsPkgs.containers
          ] ++ pkgs.lib.optionals compiler.isGhc [
            hsPkgs.transformers
            hsPkgs.deepseq
          ]) ++ pkgs.lib.optional (compiler.isGhc && _flags.templatehaskell) hsPkgs.template-haskell) ++ pkgs.lib.optional (compiler.isGhc && compiler.isGhc) hsPkgs.ghc-prim) ++ pkgs.lib.optional compiler.isGhc hsPkgs.tf-random) ++ pkgs.lib.optionals compiler.isUhc [
            hsPkgs.old-time
            hsPkgs.old-locale
          ];
        };
        tests = {
          test-quickcheck = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
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