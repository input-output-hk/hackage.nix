{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "multiset-comb";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Brent Yorgey";
        maintainer = "byorgey@cis.upenn.edu";
        author = "Brent Yorgey";
        homepage = "";
        url = "";
        synopsis = "Combinatorial algorithms over multisets";
        description = "Various combinatorial algorithms over multisets,\nincluding generating all permutations,\npartitions, size-2 partitions, size-k subsets,\nand Sawada's algorithm for generating all\nnecklaces with elements from a multiset.";
        buildType = "Simple";
      };
      components = {
        multiset-comb = {
          depends  = [ hsPkgs.base ];
        };
      };
    }