{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "phybin"; version = "0.1.2.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Ryan Newton";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton <rrnewton@gmail.com>";
      homepage = "http://people.csail.mit.edu/newton/phybin/";
      url = "";
      synopsis = "Utility for binning phylogenetic trees in Newick format.";
      description = "Classifies (bins) input Newick trees by topology, creating output files that\ncharacterize the size and contents of each bin (including\ngenerating GraphViz-based visual representations of the tree topologies).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "phybin" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."stringtable-atom" or ((hsPkgs.pkgs-errors).buildDepError "stringtable-atom"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."graphviz" or ((hsPkgs.pkgs-errors).buildDepError "graphviz"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."prettyclass" or ((hsPkgs.pkgs-errors).buildDepError "prettyclass"))
            (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
            (hsPkgs."HSH" or ((hsPkgs.pkgs-errors).buildDepError "HSH"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }