{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      buildexamples = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "set-cover";
        version = "0.0.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann, Helmut Podhaisky";
      homepage = "http://hub.darcs.net/thielema/set-cover/";
      url = "";
      synopsis = "Solve exact set cover problems like Sudoku, 8 Queens, Soma Cube, Tetris Cube";
      description = "Solver for exact set cover problems.\nIncluded examples:\nSudoku, Nonogram, 8 Queens, Domino tiling, Mastermind,\nSoma Cube, Tetris Cube, Cube of L's, Logika's Baumeister puzzle.\nThe generic algorithm allows to choose between\nslow but flexible @Set@ from @containers@ package\nand fast but cumbersome bitvectors.\n\nFor getting familiar with the package\nI propose to study the Queen8 example along with \"Math.SetCover.Exact\".\n\nBuild examples with @cabal install -fbuildExamples@.\n\nThe package needs only Haskell 98.";
      buildType = "Simple";
    };
    components = {
      "set-cover" = {
        depends  = [
          (hsPkgs.psqueues)
          (hsPkgs.enummapset)
          (hsPkgs.containers)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
        ];
      };
      exes = {
        "tetris-cube" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.haha)
            (hsPkgs.pooled-io)
            (hsPkgs.set-cover)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "soma-cube" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.set-cover)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "queen8" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.set-cover)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "sudoku-setcover" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.set-cover)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "lcube" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.set-cover)
            (hsPkgs.pooled-io)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "baumeister" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.set-cover)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "lonpos-pyramid" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.set-cover)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "alphametics" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.set-cover)
            (hsPkgs.non-empty)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "domino" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.set-cover)
            (hsPkgs.unicode)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "nonogram" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.set-cover)
            (hsPkgs.non-empty)
            (hsPkgs.psqueues)
            (hsPkgs.enummapset)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "mastermind" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.set-cover)
            (hsPkgs.random)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "pangram" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.set-cover)
            (hsPkgs.containers)
            (hsPkgs.base)
          ];
        };
      };
    };
  }