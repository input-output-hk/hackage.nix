{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tdigest";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/futurice/haskell-tdigest#readme";
        url = "";
        synopsis = "On-line accumulation of rank-based statistics";
        description = "A new data structure for accurate on-line accumulation of rank-based statistics such as quantiles and trimmed means.\n\nSee original paper: \"Computing extremely accurate quantiles using t-digest\" by Ted Dunning and Otmar Ertl\nfor more details <https://github.com/tdunning/t-digest/blob/master/docs/t-digest-paper/histo.pdf>.";
        buildType = "Custom";
      };
      components = {
        "tdigest" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.deepseq
            hsPkgs.binary
            hsPkgs.reducers
            hsPkgs.semigroups
            hsPkgs.semigroupoids
            hsPkgs.vector
            hsPkgs.vector-algorithms
          ];
        };
        tests = {
          "tdigest-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.tdigest
              hsPkgs.base-compat
              hsPkgs.deepseq
              hsPkgs.binary
              hsPkgs.semigroups
              hsPkgs.vector
              hsPkgs.vector-algorithms
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }