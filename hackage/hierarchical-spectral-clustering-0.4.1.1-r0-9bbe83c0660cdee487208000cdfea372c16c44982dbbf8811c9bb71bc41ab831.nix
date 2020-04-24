{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hierarchical-spectral-clustering";
        version = "0.4.1.1";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
          (hsPkgs."clustering" or ((hsPkgs.pkgs-errors).buildDepError "clustering"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."eigen" or ((hsPkgs.pkgs-errors).buildDepError "eigen"))
          (hsPkgs."hierarchical-clustering" or ((hsPkgs.pkgs-errors).buildDepError "hierarchical-clustering"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."managed" or ((hsPkgs.pkgs-errors).buildDepError "managed"))
          (hsPkgs."modularity" or ((hsPkgs.pkgs-errors).buildDepError "modularity"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."sparse-linear-algebra" or ((hsPkgs.pkgs-errors).buildDepError "sparse-linear-algebra"))
          (hsPkgs."spectral-clustering" or ((hsPkgs.pkgs-errors).buildDepError "spectral-clustering"))
          (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-cassava" or ((hsPkgs.pkgs-errors).buildDepError "streaming-cassava"))
          (hsPkgs."streaming-with" or ((hsPkgs.pkgs-errors).buildDepError "streaming-with"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."tree-fun" or ((hsPkgs.pkgs-errors).buildDepError "tree-fun"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "cluster-tree" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hierarchical-spectral-clustering" or ((hsPkgs.pkgs-errors).buildDepError "hierarchical-spectral-clustering"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-show" or ((hsPkgs.pkgs-errors).buildDepError "text-show"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }