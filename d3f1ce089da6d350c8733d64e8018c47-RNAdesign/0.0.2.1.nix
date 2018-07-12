{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "RNAdesign";
          version = "0.0.2.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "choener@tbi.univie.ac.at";
        author = "Christian Hoener zu Siederdissen";
        homepage = "";
        url = "";
        synopsis = "Multi-target RNA sequence design";
        description = "The RNA sequence design problem asks for a single sequence that\nreadily folds into the one or more structural targets that are\ngiven as input.\n\nThis program expects on standard input a file with one or more\nstructures and, possibly, additional sequence constraints. It\nwill then run a Markov chain to find a sequence that is optimal\nwith regard to the structural targets and the user-defineable\noptimization function.\n\nThe user can give different optimization criteria on the\ncommand line, akin to a simple calculator.\n\n\n\nIf you find this program useful, please cite:\n\nChristian Hoener zu Siederdissen, Stefan Hammer, Ingrid Abfalter, Ivo L. Hofacker, Christoph Flamm, Peter F. Stadler\n\n@A Graph Coloring Approach to Designing Multi-Stable Nucleic Acid Sequences@\n\nBiopolymers, 99, 12, 1124-1136, 2013, Wiley";
        buildType = "Simple";
      };
      components = {
        "RNAdesign" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.fgl
            hsPkgs.lens
            hsPkgs.monad-primitive
            hsPkgs.mwc-random-monad
            hsPkgs.parallel
            hsPkgs.parsec
            hsPkgs.primitive
            hsPkgs.random
            hsPkgs.transformers
            hsPkgs.tuple
            hsPkgs.vector
            hsPkgs.fgl-extras-decompositions
            hsPkgs.BiobaseTurner
            hsPkgs.BiobaseVienna
            hsPkgs.BiobaseXNA
            hsPkgs.ParsecTools
            hsPkgs.PrimitiveArray
            hsPkgs.RNAFold
            hsPkgs.ViennaRNA-bindings
          ];
        };
        exes = {
          "RNAdesign" = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.fgl
              hsPkgs.lens
              hsPkgs.monad-primitive
              hsPkgs.mwc-random-monad
              hsPkgs.parallel
              hsPkgs.parsec
              hsPkgs.primitive
              hsPkgs.random
              hsPkgs.transformers
              hsPkgs.tuple
              hsPkgs.vector
              hsPkgs.fgl-extras-decompositions
              hsPkgs.BiobaseTurner
              hsPkgs.BiobaseVienna
              hsPkgs.BiobaseXNA
              hsPkgs.ParsecTools
              hsPkgs.PrimitiveArray
              hsPkgs.RNAFold
              hsPkgs.ViennaRNA-bindings
            ];
          };
        };
      };
    }