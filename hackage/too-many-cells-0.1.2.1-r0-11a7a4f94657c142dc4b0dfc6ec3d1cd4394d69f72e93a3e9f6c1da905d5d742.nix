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
      identifier = { name = "too-many-cells"; version = "0.1.2.1"; };
      license = "GPL-3.0-only";
      copyright = "2019 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/too-many-cells#readme";
      url = "";
      synopsis = "Cluster single cells and analyze cell clade relationships.";
      description = "Different methods to cluster and analyze single cell data with diversity indices and differential expression.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."birch-beer" or (errorHandler.buildDepError "birch-beer"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."diagrams" or (errorHandler.buildDepError "diagrams"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-graphviz" or (errorHandler.buildDepError "diagrams-graphviz"))
          (hsPkgs."differential" or (errorHandler.buildDepError "differential"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."diversity" or (errorHandler.buildDepError "diversity"))
          (hsPkgs."find-clumpiness" or (errorHandler.buildDepError "find-clumpiness"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."hierarchical-clustering" or (errorHandler.buildDepError "hierarchical-clustering"))
          (hsPkgs."hierarchical-spectral-clustering" or (errorHandler.buildDepError "hierarchical-spectral-clustering"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."inline-r" or (errorHandler.buildDepError "inline-r"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
          (hsPkgs."matrix-market-attoparsec" or (errorHandler.buildDepError "matrix-market-attoparsec"))
          (hsPkgs."mltool" or (errorHandler.buildDepError "mltool"))
          (hsPkgs."modularity" or (errorHandler.buildDepError "modularity"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."palette" or (errorHandler.buildDepError "palette"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."plots" or (errorHandler.buildDepError "plots"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."sparse-linear-algebra" or (errorHandler.buildDepError "sparse-linear-algebra"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-cassava" or (errorHandler.buildDepError "streaming-cassava"))
          (hsPkgs."streaming-with" or (errorHandler.buildDepError "streaming-with"))
          (hsPkgs."SVGFonts" or (errorHandler.buildDepError "SVGFonts"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
        buildable = true;
        };
      exes = {
        "too-many-cells" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."too-many-cells" or (errorHandler.buildDepError "too-many-cells"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."birch-beer" or (errorHandler.buildDepError "birch-beer"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."find-clumpiness" or (errorHandler.buildDepError "find-clumpiness"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            (hsPkgs."hierarchical-spectral-clustering" or (errorHandler.buildDepError "hierarchical-spectral-clustering"))
            (hsPkgs."inline-r" or (errorHandler.buildDepError "inline-r"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."matrix-market-attoparsec" or (errorHandler.buildDepError "matrix-market-attoparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."palette" or (errorHandler.buildDepError "palette"))
            (hsPkgs."plots" or (errorHandler.buildDepError "plots"))
            (hsPkgs."spectral-clustering" or (errorHandler.buildDepError "spectral-clustering"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-utils" or (errorHandler.buildDepError "streaming-utils"))
            (hsPkgs."terminal-progress-bar" or (errorHandler.buildDepError "terminal-progress-bar"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }