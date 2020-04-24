{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "too-many-cells"; version = "0.1.11.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."birch-beer" or ((hsPkgs.pkgs-errors).buildDepError "birch-beer"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."diagrams" or ((hsPkgs.pkgs-errors).buildDepError "diagrams"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-cairo" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-graphviz" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-graphviz"))
          (hsPkgs."differential" or ((hsPkgs.pkgs-errors).buildDepError "differential"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."diversity" or ((hsPkgs.pkgs-errors).buildDepError "diversity"))
          (hsPkgs."find-clumpiness" or ((hsPkgs.pkgs-errors).buildDepError "find-clumpiness"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."hierarchical-clustering" or ((hsPkgs.pkgs-errors).buildDepError "hierarchical-clustering"))
          (hsPkgs."hierarchical-spectral-clustering" or ((hsPkgs.pkgs-errors).buildDepError "hierarchical-spectral-clustering"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."inline-r" or ((hsPkgs.pkgs-errors).buildDepError "inline-r"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."managed" or ((hsPkgs.pkgs-errors).buildDepError "managed"))
          (hsPkgs."matrix-market-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "matrix-market-attoparsec"))
          (hsPkgs."modularity" or ((hsPkgs.pkgs-errors).buildDepError "modularity"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."palette" or ((hsPkgs.pkgs-errors).buildDepError "palette"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."plots" or ((hsPkgs.pkgs-errors).buildDepError "plots"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."sparse-linear-algebra" or ((hsPkgs.pkgs-errors).buildDepError "sparse-linear-algebra"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."statistics" or ((hsPkgs.pkgs-errors).buildDepError "statistics"))
          (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-cassava" or ((hsPkgs.pkgs-errors).buildDepError "streaming-cassava"))
          (hsPkgs."streaming-with" or ((hsPkgs.pkgs-errors).buildDepError "streaming-with"))
          (hsPkgs."SVGFonts" or ((hsPkgs.pkgs-errors).buildDepError "SVGFonts"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-show" or ((hsPkgs.pkgs-errors).buildDepError "text-show"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          ];
        buildable = true;
        };
      exes = {
        "too-many-cells" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."too-many-cells" or ((hsPkgs.pkgs-errors).buildDepError "too-many-cells"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."birch-beer" or ((hsPkgs.pkgs-errors).buildDepError "birch-beer"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-cairo"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."find-clumpiness" or ((hsPkgs.pkgs-errors).buildDepError "find-clumpiness"))
            (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
            (hsPkgs."hierarchical-spectral-clustering" or ((hsPkgs.pkgs-errors).buildDepError "hierarchical-spectral-clustering"))
            (hsPkgs."inline-r" or ((hsPkgs.pkgs-errors).buildDepError "inline-r"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."matrix-market-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "matrix-market-attoparsec"))
            (hsPkgs."modularity" or ((hsPkgs.pkgs-errors).buildDepError "modularity"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."palette" or ((hsPkgs.pkgs-errors).buildDepError "palette"))
            (hsPkgs."plots" or ((hsPkgs.pkgs-errors).buildDepError "plots"))
            (hsPkgs."spectral-clustering" or ((hsPkgs.pkgs-errors).buildDepError "spectral-clustering"))
            (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-utils" or ((hsPkgs.pkgs-errors).buildDepError "streaming-utils"))
            (hsPkgs."terminal-progress-bar" or ((hsPkgs.pkgs-errors).buildDepError "terminal-progress-bar"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-show" or ((hsPkgs.pkgs-errors).buildDepError "text-show"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }