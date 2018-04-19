{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "twentyseven";
          version = "0.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "lysxia@gmail.com";
        author = "Li-yao Xia";
        homepage = "https://github.com/lysxia/twentyseven";
        url = "";
        synopsis = "Rubik's cube solver";
        description = "Solve 3×3×3 Rubik's cubes in the fewest possible moves. Or, if you can't\nwait, get /close enough/ with the two-phase solver.";
        buildType = "Simple";
      };
      components = {
        twentyseven = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.heap
            hsPkgs.primitive
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.monad-loops
            hsPkgs.MonadRandom
            hsPkgs.mtl
            hsPkgs.newtype
            hsPkgs.ref-fd
            hsPkgs.template-haskell
          ];
        };
        exes = {
          twentyseven = {
            depends  = [
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.twentyseven
            ];
          };
        };
        tests = {
          test-twentyseven = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.cabal-test-quickcheck
              hsPkgs.HUnit-Plus
              hsPkgs.QuickCheck
              hsPkgs.split
              hsPkgs.vector
              hsPkgs.twentyseven
            ];
          };
        };
      };
    }