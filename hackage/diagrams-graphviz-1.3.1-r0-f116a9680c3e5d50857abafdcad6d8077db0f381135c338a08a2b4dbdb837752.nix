{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "diagrams-graphviz";
        version = "1.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Brent Yorgey 2014,2015";
      maintainer = "byorgey@gmail.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams/";
      url = "";
      synopsis = "Graph layout and drawing with GrahpViz and diagrams";
      description = "Use GraphViz and diagrams together, with each doing what\nit does best: GraphViz for laying out graphs, and diagrams\nfor drawing them.";
      buildType = "Simple";
    };
    components = {
      "diagrams-graphviz" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.diagrams-lib)
          (hsPkgs.graphviz)
          (hsPkgs.fgl)
          (hsPkgs.split)
        ];
      };
    };
  }