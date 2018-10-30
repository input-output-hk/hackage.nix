{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "multiset-comb";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Brent Yorgey";
      maintainer = "byorgey@cis.upenn.edu";
      author = "Brent Yorgey";
      homepage = "http://code.haskell.org/~byorgey/code/multiset-comb";
      url = "";
      synopsis = "Combinatorial operations on multisets";
      description = "Efficiently generate all permutations and partitions of multisets.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }