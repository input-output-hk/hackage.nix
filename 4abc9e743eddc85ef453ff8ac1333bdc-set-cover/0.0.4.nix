{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "set-cover";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann, Helmut Podhaisky";
        homepage = "http://code.haskell.org/~thielema/set-cover/";
        url = "";
        synopsis = "Solve exact set cover problems like Sudoku, 8 Queens, Soma Cube, Tetris Cube";
        description = "Solver for exact set cover problems.\nIncluded examples:\nSudoku, 8 Queens,\nSoma Cube, Tetris Cube, Cube of L's, Logika's Baumeister puzzle.\nGeneric algorithm allows to choose between\nslow but flexible @Set@ from @containers@ package\nand fast but cumbersome bitvectors.\n\nBuild examples with @cabal install -fbuildExamples@.\n\nThe package needs only Haskell 98.";
        buildType = "Simple";
      };
      components = {
        set-cover = {
          depends  = [
            hsPkgs.containers
            hsPkgs.utility-ht
            hsPkgs.base
          ];
        };
        exes = {
          tetris-cube = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.set-cover
              hsPkgs.containers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
          soma-cube = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.set-cover
              hsPkgs.containers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
          queen8 = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.set-cover
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
          sudoku-setcover = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.set-cover
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
          lcube = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.set-cover
              hsPkgs.containers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
          baumeister = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.set-cover
              hsPkgs.containers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
          alphametics = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.set-cover
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
          domino = {
            depends  = optionals _flags.buildexamples [
              hsPkgs.set-cover
              hsPkgs.containers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
      };
    }