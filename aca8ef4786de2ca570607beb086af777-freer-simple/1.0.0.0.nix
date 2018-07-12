{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "freer-simple";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Allele Dev; 2017 Ixperta Solutions s.r.o.; 2017 Alexis King";
        maintainer = "Alexis King <lexi.lambda@gmail.com>";
        author = "Allele Dev, Ixcom Core Team, Alexis King, and other contributors";
        homepage = "https://github.com/lexi-lambda/freer-simple#readme";
        url = "";
        synopsis = "Implementation of a friendly effect system for Haskell.";
        description = "An implementation of an effect system for Haskell (a fork of\n<http://hackage.haskell.org/package/freer-effects freer-effects>), which is\nbased on the work of Oleg Kiselyov et al.:\n\n* <http://okmij.org/ftp/Haskell/extensible/more.pdf Freer Monads, More Extensible Effects>\n* <http://okmij.org/ftp/Haskell/zseq.pdf Reflection without Remorse>\n* <http://okmij.org/ftp/Haskell/extensible/exteff.pdf Extensible Effects>\n\nThe key features are:\n\n* An efficient effect system for Haskell - as a library!\n* Reimplementations of several common Haskell monad transformers as effects.\n* Core components for defining your own Effects.";
        buildType = "Simple";
      };
      components = {
        "freer-simple" = {
          depends  = [
            hsPkgs.base
            hsPkgs.natural-transformation
            hsPkgs.transformers-base
          ];
        };
        exes = {
          "freer-examples" = {
            depends  = [
              hsPkgs.base
              hsPkgs.freer-simple
            ];
          };
        };
        tests = {
          "unit" = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.freer-simple
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ];
          };
        };
        benchmarks = {
          "core" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.extensible-effects
              hsPkgs.free
              hsPkgs.freer-simple
              hsPkgs.mtl
            ];
          };
        };
      };
    }