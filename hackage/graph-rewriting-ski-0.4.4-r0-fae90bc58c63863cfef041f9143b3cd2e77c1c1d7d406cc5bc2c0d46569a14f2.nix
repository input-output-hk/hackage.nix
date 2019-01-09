{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "graph-rewriting-ski"; version = "0.4.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "";
      url = "";
      synopsis = "Implementation of the SKI combinators as an interactive graph rewriting system";
      description = "This package serves as an example for how to use the graph-rewriting, graph-rewriting-layout, and graph-rewriting-gl packages to create a graph rewriting system with an interactive, graphical front-end. The sources are well documented and can used as a tutorial for implementing your own rewrite system. Start reading in Graph.hs";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ski" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.graph-rewriting)
            (hsPkgs.graph-rewriting-layout)
            (hsPkgs.graph-rewriting-gl)
            (hsPkgs.parsec)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGL)
            (hsPkgs.IndentParser)
            ];
          };
        };
      };
    }