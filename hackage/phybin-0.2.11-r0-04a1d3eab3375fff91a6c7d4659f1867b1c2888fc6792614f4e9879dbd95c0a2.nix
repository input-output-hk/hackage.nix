{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      hashrf = true;
      bitvec = false;
      sequential = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "phybin";
        version = "0.2.11";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.async)
          (hsPkgs.time)
          (hsPkgs.filepath)
          (hsPkgs.graphviz)
          (hsPkgs.text)
          (hsPkgs.prettyclass)
          (hsPkgs.fgl)
          (hsPkgs.HUnit)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
          (hsPkgs.vector)
          (hsPkgs.hierarchical-clustering)
          (hsPkgs.split)
        ] ++ pkgs.lib.optional (flags.bitvec) (hsPkgs.bitvec);
      };
      exes = {
        "phybin" = {
          depends  = [
            (hsPkgs.phybin)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.async)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.graphviz)
            (hsPkgs.text)
            (hsPkgs.prettyclass)
            (hsPkgs.fgl)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.parsec)
            (hsPkgs.vector)
            (hsPkgs.hierarchical-clustering)
            (hsPkgs.split)
          ] ++ pkgs.lib.optional (flags.bitvec) (hsPkgs.bitvec);
        };
      };
    };
  }