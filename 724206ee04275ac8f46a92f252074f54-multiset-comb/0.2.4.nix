{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "multiset-comb";
        version = "0.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Brent Yorgey";
      maintainer = "byorgey@gmail.com";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Combinatorial algorithms over multisets";
      description = "Various combinatorial algorithms over multisets,\nincluding generating all permutations,\npartitions, size-2 partitions, size-k subsets,\nnecklaces, and bracelets.";
      buildType = "Simple";
    };
    components = {
      "multiset-comb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
        ];
      };
    };
  }