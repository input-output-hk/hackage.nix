{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      pedantic = false;
      test-hlint = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "freer-effects";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Allele Dev; 2017 Ixperta Solutions s.r.o.";
      maintainer = "ixcom-core@ixperta.com";
      author = "Allele Dev, Ixcom Core Team, and other contributors";
      homepage = "https://github.com/IxpertaSolutions/freer-effects";
      url = "";
      synopsis = "Implementation of effect system for Haskell.";
      description = "Implementation of effect system for Haskell, which is based on the work of\nOleg Kiselyov et al.:\n\n* <http://okmij.org/ftp/Haskell/extensible/more.pdf Freer Monads, More Extensible Effects>\n\n* <http://okmij.org/ftp/Haskell/zseq.pdf Reflection without Remorse>\n\n* <http://okmij.org/ftp/Haskell/extensible/exteff.pdf Extensible Effects>\n\nThe key features are:\n\n* An efficient effect system for Haskell - as a library!\n\n* Reimplementations of several common Haskell monad transformers as effects.\n\n* Core components for defining your own Effects.";
      buildType = "Simple";
    };
    components = {
      "freer-effects" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "freer-examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.freer-effects)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.freer-effects)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
          ];
        };
        "hlint" = {
          depends  = pkgs.lib.optionals (flags.test-hlint) [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
      benchmarks = {
        "core" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.free)
            (hsPkgs.freer-effects)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }