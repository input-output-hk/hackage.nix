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
      specVersion = "1.10";
      identifier = {
        name = "hierarchical-spectral-clustering";
        version = "0.5.0.1";
        };
      license = "GPL-3.0-only";
      copyright = "2019 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/hierarchical-spectral-clustering#readme";
      url = "";
      synopsis = "Hierarchical spectral clustering of a graph.";
      description = "Generate a tree of hierarchical spectral clustering using Newman-Girvan modularity as a stopping criteria.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."clustering" or (errorHandler.buildDepError "clustering"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hierarchical-clustering" or (errorHandler.buildDepError "hierarchical-clustering"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
          (hsPkgs."modularity" or (errorHandler.buildDepError "modularity"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."sparse-linear-algebra" or (errorHandler.buildDepError "sparse-linear-algebra"))
          (hsPkgs."spectral-clustering" or (errorHandler.buildDepError "spectral-clustering"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-cassava" or (errorHandler.buildDepError "streaming-cassava"))
          (hsPkgs."streaming-with" or (errorHandler.buildDepError "streaming-with"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tree-fun" or (errorHandler.buildDepError "tree-fun"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "cluster-tree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hierarchical-spectral-clustering" or (errorHandler.buildDepError "hierarchical-spectral-clustering"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }