{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14";
        identifier = {
          name = "battleship-combinatorics";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://hub.darcs.net/thielema/battleship-combinatorics/";
        url = "";
        synopsis = "Compute number of possible arrangements in the battleship game";
        description = "Compute number of possible arrangements in the battleship game\nwith different methods.\n\n<https://en.wikipedia.org/wiki/Battleship_(game)>";
        buildType = "Simple";
      };
      components = {
        "battleship-combinatorics" = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.pooled-io
            hsPkgs.combinatorial
            hsPkgs.set-cover
            hsPkgs.temporary
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.random
            hsPkgs.storable-record
            hsPkgs.storablevector
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.non-empty
            hsPkgs.transformers
            hsPkgs.utility-ht
            hsPkgs.prelude-compat
            hsPkgs.base
          ];
        };
        exes = {
          "battleship-combinatorics" = {
            depends  = [
              hsPkgs.battleship-combinatorics
              hsPkgs.containers
              hsPkgs.base
            ];
          };
        };
        tests = {
          "battleship-combinatorics-test" = {
            depends  = [
              hsPkgs.battleship-combinatorics
              hsPkgs.QuickCheck
              hsPkgs.base
            ];
          };
        };
      };
    }