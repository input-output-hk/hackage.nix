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
        name = "graph-rewriting-gl";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "";
      url = "";
      synopsis = "OpenGL interface for interactive hypergraph rewriting";
      description = "Once a graph rewriting system has been specified using the graph-rewriting library this package can be\nused to create an application that allows to experiment with this system by interactively applying the\nrewrite rules manually on the graph.";
      buildType = "Simple";
    };
    components = {
      "graph-rewriting-gl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.graph-rewriting)
          (hsPkgs.graph-rewriting-layout)
          (hsPkgs.GLUT)
          (hsPkgs.OpenGL)
          (hsPkgs.containers)
          (hsPkgs.AC-Vector)
        ];
      };
    };
  }