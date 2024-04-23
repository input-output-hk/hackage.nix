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
      specVersion = "1.8";
      identifier = { name = "Etage-Graph"; version = "0.1.7"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2011-2013 Mitar Milutinovic";
      maintainer = "mitar.haskell@tnode.com";
      author = "Mitar Milutinovic";
      homepage = "http://mitar.tnode.com";
      url = "";
      synopsis = "Data-flow based graph algorithms";
      description = "Data-flow based graph algorithms using the \"Control.Etage\" framework, showcasing its use for data-flow\ncomputations. It is meant to be used with the \"Data.Graph.Inductive\" package which provides graph structures\nthese algorithms take as an input.\n\nCurrently only the shortest paths computation is implemented (from all to all nodes).\n\nAlso a benchmarking @test@ program is provided, comparing the performance with algorithms found in the\n\"Data.Graph.Inductive\" package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Etage" or (errorHandler.buildDepError "Etage"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "etage-graph-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."Etage" or (errorHandler.buildDepError "Etage"))
            (hsPkgs."Etage-Graph" or (errorHandler.buildDepError "Etage-Graph"))
          ];
          buildable = true;
        };
      };
    };
  }