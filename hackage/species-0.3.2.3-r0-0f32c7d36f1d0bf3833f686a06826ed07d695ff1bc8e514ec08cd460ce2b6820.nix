{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "species";
        version = "0.3.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brent Yorgey <byorgey@cis.upenn.edu>";
      author = "Brent Yorgey";
      homepage = "http://www.cis.upenn.edu/~byorgey/species";
      url = "";
      synopsis = "Computational combinatorial species";
      description = "A DSL for describing and computing with combinatorial species,\ne.g. counting labeled or unlabeled structures, or generating\na list of all labeled structures for a species.";
      buildType = "Simple";
    };
    components = {
      "species" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.numeric-prelude)
          (hsPkgs.np-extras)
          (hsPkgs.containers)
          (hsPkgs.multiset-comb)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }