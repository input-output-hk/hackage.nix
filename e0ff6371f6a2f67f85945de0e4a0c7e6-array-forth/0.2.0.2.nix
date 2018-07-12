{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "array-forth";
          version = "0.2.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "tikhon@jelv.is";
        author = "Tikhon Jelvis <tikhon@jelv.is>";
        homepage = "";
        url = "";
        synopsis = "A simple interpreter for arrayForth, the language used on GreenArrays chips.";
        description = "This is a package for working with arrayForth. This is a variant of Forth used by GreenArrays chips. This package contains an arrayForth simulator, two different representations of arrayForth programs and some utilities like parsing.\nIt also supports synthesizing arrayForth programs using MCMC. The basic idea is to find arrayForth programs by taking a simple prior distribution of programs and using a randomized hill-climbing algorithm to find a program fulfilling certain tests.";
        buildType = "Simple";
      };
      components = {
        "array-forth" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mcmc-synthesis
            hsPkgs.MonadRandom
            hsPkgs.OddWord
            hsPkgs.split
            hsPkgs.vector
          ];
        };
        exes = {
          "mcmc-demo" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mcmc-synthesis
              hsPkgs.array-forth
              hsPkgs.MonadRandom
            ];
          };
          "array-forth" = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.split
              hsPkgs.array-forth
            ];
          };
        };
      };
    }