{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "graph-rewriting"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://rochel.info/#graph-rewriting";
      url = "";
      synopsis = "Monadic graph rewriting of hypergraphs with ports and multiedges";
      description = "This library provides a monadic EDSL to define your own graph rewrite system in Haskell. Once you have specified the signature of your graph and a set of rewrite rules, you can apply these rules on a graph to effect a graph transformation. The aim of this library is to make it as convenient as possible to define such a system and experiment with it and is not designed as a backend for high-performance computation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }