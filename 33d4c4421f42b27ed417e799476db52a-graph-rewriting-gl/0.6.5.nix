{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "graph-rewriting-gl";
          version = "0.6.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010, Jan Rochel";
        maintainer = "jan@rochel.info";
        author = "Jan Rochel";
        homepage = "http://rochel.info/#graph-rewriting";
        url = "";
        synopsis = "OpenGL interface for interactive port graph rewriting";
        description = "Once a graph rewriting system has been specified using the @graph-rewriting@ library this package can be used to create an application that allows to experiment with this system by interactively applying the rewrite rules. The usage of the interface is the same for all applications. In the center you will see the graph. It might be moving around which is due the force-directed layouting. On the top-left corner you will find a menu with the individual rewriting rules of the rewriting system. The controls are described in the \"GraphRewriting.GL.UI\" module.";
        buildType = "Simple";
      };
      components = {
        "graph-rewriting-gl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.graph-rewriting
            hsPkgs.graph-rewriting-layout
            hsPkgs.GLUT
            hsPkgs.OpenGL
            hsPkgs.containers
            hsPkgs.AC-Vector
            hsPkgs.FTGL
          ];
        };
      };
    }