{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      synthesis = false;
      chart = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "array-forth";
        version = "0.2.1.4";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Tikhon Jelvis <tikhon@jelv.is>";
      author = "Tikhon Jelvis <tikhon@jelv.is>";
      homepage = "";
      url = "";
      synopsis = "A simple interpreter for arrayForth, the language used on GreenArrays chips.";
      description = "This is a package for working with arrayForth. This is a variant of Forth used by GreenArrays chips. This package contains an arrayForth simulator, two different representations of arrayForth programs and some utilities like parsing.\nIt also supports synthesizing arrayForth programs using MCMC. The basic idea is to find arrayForth programs by taking a simple prior distribution of programs and using a randomized hill-climbing algorithm to find a program fulfilling certain tests.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.mcmc-synthesis)
          (hsPkgs.modular-arithmetic)
          (hsPkgs.MonadRandom)
          (hsPkgs.OddWord)
          (hsPkgs.split)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "mcmc-demo" = {
          depends = pkgs.lib.optionals (flags.synthesis) [
            (hsPkgs.array-forth)
            (hsPkgs.base)
            (hsPkgs.mcmc-synthesis)
            (hsPkgs.MonadRandom)
            (hsPkgs.optparse-applicative)
          ];
        };
        "array-forth" = {
          depends = [
            (hsPkgs.array-forth)
            (hsPkgs.base)
            (hsPkgs.split)
            (hsPkgs.vector)
          ];
        };
        "chart" = {
          depends = pkgs.lib.optionals (flags.chart) [
            (hsPkgs.array-forth)
            (hsPkgs.base)
            (hsPkgs.Chart)
            (hsPkgs.mcmc-synthesis)
            (hsPkgs.MonadRandom)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "test-array-forth" = {
          depends = [
            (hsPkgs.array-forth)
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
          ];
        };
      };
    };
  }