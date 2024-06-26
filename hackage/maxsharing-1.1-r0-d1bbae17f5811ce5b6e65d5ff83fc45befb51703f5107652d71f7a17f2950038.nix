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
      identifier = { name = "maxsharing"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://arxiv.org/abs/1401.1460";
      url = "";
      synopsis = "Maximal sharing of terms in the lambda calculus with letrec";
      description = "Parses a lambda-letrec term; transforms it into a first-order\nterm graph representation; minimises the graph by bisimulation\ncollapse; reads back a lambda-letrec term which has the same\nunfolding as the original term but is more (maximally) compact.\nIf executable \"dot\" from graphviz is available, the graphs are\ndisplayed (tested for Linux). The approach is described in an\nICFP-paper <http://dx.doi.org/10.1145/2628136.2628148> and an\nextended version thereof <http://arxiv.org/abs/1401.1460>.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "maxsharing" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."indentparser" or (errorHandler.buildDepError "indentparser"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."containers-unicode-symbols" or (errorHandler.buildDepError "containers-unicode-symbols"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
            (hsPkgs."HaLeX" or (errorHandler.buildDepError "HaLeX"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          ];
          buildable = true;
        };
      };
    };
  }