{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { hashrf = true; bitvec = false; sequential = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "phybin"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Ryan Newton";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton <rrnewton@gmail.com>";
      homepage = "http://www.cs.indiana.edu/~rrnewton/projects/phybin/";
      url = "";
      synopsis = "Utility for clustering phylogenetic trees in Newick format based on Robinson-Foulds distance.";
      description = "This package provides a libary and executable for dealing with Newick tree files.\n\nIt can do simple binning of identical trees or more complex clustering based on\nan all-to-all Robinson-Foulds distance matrix.\n\nphybin produces output files that characterize the size and contents of each bin or cluster (including\ngenerating GraphViz-based visual representations of the tree topologies).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."prettyclass" or ((hsPkgs.pkgs-errors).buildDepError "prettyclass"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."hierarchical-clustering" or ((hsPkgs.pkgs-errors).buildDepError "hierarchical-clustering"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ] ++ (pkgs.lib).optional (flags.bitvec) (hsPkgs."bitvec" or ((hsPkgs.pkgs-errors).buildDepError "bitvec"));
        buildable = true;
        };
      exes = {
        "phybin" = {
          depends = [
            (hsPkgs."phybin" or ((hsPkgs.pkgs-errors).buildDepError "phybin"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."prettyclass" or ((hsPkgs.pkgs-errors).buildDepError "prettyclass"))
            (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hierarchical-clustering" or ((hsPkgs.pkgs-errors).buildDepError "hierarchical-clustering"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            ] ++ (pkgs.lib).optional (flags.bitvec) (hsPkgs."bitvec" or ((hsPkgs.pkgs-errors).buildDepError "bitvec"));
          buildable = true;
          };
        };
      tests = {
        "test-phybin" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."prettyclass" or ((hsPkgs.pkgs-errors).buildDepError "prettyclass"))
            (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hierarchical-clustering" or ((hsPkgs.pkgs-errors).buildDepError "hierarchical-clustering"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            ] ++ (pkgs.lib).optional (flags.bitvec) (hsPkgs."bitvec" or ((hsPkgs.pkgs-errors).buildDepError "bitvec"));
          buildable = true;
          };
        };
      };
    }