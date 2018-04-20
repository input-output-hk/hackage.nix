{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "graph-rewriting-ski";
          version = "0.6.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010, Jan Rochel";
        maintainer = "jan@rochel.info";
        author = "Jan Rochel";
        homepage = "http://rochel.info/#graph-rewriting";
        url = "";
        synopsis = "Two implementations of the SKI combinators as interactive graph rewrite systems";
        description = "This package serves as an example for how to use the graph-rewriting, graph-rewriting-layout, and graph-rewriting-gl packages to create a graph rewriting system with an interactive, graphical front-end. The SKI combinator calculus is implemented once as an interaction net with combinators that accumulate their arguments, and once in a more direct manner. The sources (of the interaction net implementation) are well documented and serve as a tutorial for implementing your own rewrite system. Start reading in INet/Graph.hs. To run the program run either the \"ski-inet\" or the \"ski-direct\" with one of the files from the \"examples\" directory as an argument. For usage of the GUI see \"GraphRewriting.GL.UI\".";
        buildType = "Simple";
      };
      components = {
        exes = {
          ski-inet = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.graph-rewriting
              hsPkgs.graph-rewriting-layout
              hsPkgs.graph-rewriting-gl
              hsPkgs.parsec
              hsPkgs.GLUT
              hsPkgs.OpenGL
            ];
          };
          ski-direct = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.graph-rewriting
              hsPkgs.graph-rewriting-layout
              hsPkgs.graph-rewriting-gl
              hsPkgs.parsec
              hsPkgs.GLUT
              hsPkgs.OpenGL
            ];
          };
        };
      };
    }