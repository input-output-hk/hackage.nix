{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "phybin";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Ryan Newton";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton <rrnewton@gmail.com>";
      homepage = "http://people.csail.mit.edu/newton/phybin/";
      url = "";
      synopsis = "Utility for clustering phylogenetic trees in Newick format based on Robinson-Foulds distance.";
      description = "This package provides a libary and executable for dealing with Newick tree files.\n\nIt can do simple binning of identical trees or more complex clustering based on\nan all-to-all Robinson-Foulds distance matrix.\n\nOutput files that characterize the size and contents of each bin or cluster (including\ngenerating GraphViz-based visual representations of the tree topologies).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.unix)
          (hsPkgs.async)
          (hsPkgs.time)
          (hsPkgs.filepath)
          (hsPkgs.graphviz)
          (hsPkgs.text)
          (hsPkgs.prettyclass)
          (hsPkgs.fgl)
          (hsPkgs.HSH)
          (hsPkgs.HUnit)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
          (hsPkgs.bitvec)
          (hsPkgs.vector)
          (hsPkgs.hierarchical-clustering)
        ];
      };
      exes = {
        "phybin" = {
          depends  = [
            (hsPkgs.phybin)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.unix)
            (hsPkgs.async)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.graphviz)
            (hsPkgs.text)
            (hsPkgs.prettyclass)
            (hsPkgs.fgl)
            (hsPkgs.HSH)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.parsec)
            (hsPkgs.bitvec)
            (hsPkgs.vector)
            (hsPkgs.hierarchical-clustering)
          ];
        };
      };
    };
  }