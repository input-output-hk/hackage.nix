{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "phybin";
        version = "0.1.2.1";
      };
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.unix)
            (hsPkgs.stringtable-atom)
            (hsPkgs.filepath)
            (hsPkgs.graphviz)
            (hsPkgs.prettyclass)
            (hsPkgs.fgl)
            (hsPkgs.HSH)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }