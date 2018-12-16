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
      specVersion = "1.6";
      identifier = {
        name = "graph-rewriting";
        version = "0.7.10";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://rochel.info/#graph-rewriting";
      url = "";
      synopsis = "Monadic graph rewriting of hypergraphs with ports and multiedges";
      description = "This library provides a monadic EDSL to define your own port graph rewrite system in Haskell. Once you have specified the signature of your nodes and a set of rewrite rules, you can apply these rules on a graph to effect a graph transformation. The aim of this library is to make it as convenient as possible to define such a system and experiment with it and is not intended as a backend for high-performance computation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.mtl)
          (hsPkgs.containers)
        ];
      };
    };
  }