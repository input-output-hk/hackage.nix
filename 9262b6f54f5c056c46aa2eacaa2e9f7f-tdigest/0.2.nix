{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tdigest";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/futurice/haskell-tdigest#readme";
        url = "";
        synopsis = "On-line accumulation of rank-based statistics";
        description = "A new data structure for accurate on-line accumulation of rank-based statistics such as quantiles and trimmed means.\n\nSee original paper: \"Computing extremely accurate quantiles using t-digest\" by Ted Dunning and Otmar Ertl\nfor more details <https://github.com/tdunning/t-digest/blob/07b8f2ca2be8d0a9f04df2feadad5ddc1bb73c88/docs/t-digest-paper/histo.pdf>.";
        buildType = "Custom";
      };
      components = {
        tdigest = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.binary
            hsPkgs.transformers
            hsPkgs.base-compat
            hsPkgs.reducers
            hsPkgs.semigroupoids
            hsPkgs.vector
            hsPkgs.vector-algorithms
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          tdigest-tests = {
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
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }