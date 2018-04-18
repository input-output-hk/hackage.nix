{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "graph-rewriting-trs";
          version = "0.1.7";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011, Jan Rochel";
        maintainer = "jan@rochel.info";
        author = "Jan Rochel";
        homepage = "http://rochel.info/#graph-rewriting";
        url = "";
        synopsis = "Evaluate first-order applicative term rewrite systems interactively using graph reduction";
        description = "Given a set of term rewriting rules and an initial term with this tool you can interactively evaluate the corresponding term graph. The employed rule set has to be defined in one or more files. In the examples-directory a few rewriting systems are already supplied. To see how it works invoke the with the SKI-combinator rules and an initial term as arguments: @trs examples/ski.trs \"SK(S(KIS)K)I\"@. On how to interact with the application see the \"GraphRewriting.GL.UI\" module of the graph-rewriting-gl package.";
        buildType = "Simple";
      };
      components = {
        exes = {
          trs = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.graph-rewriting
              hsPkgs.graph-rewriting-layout
              hsPkgs.graph-rewriting-gl
              hsPkgs.uu-parsinglib
              hsPkgs.containers
              hsPkgs.GLUT
              hsPkgs.OpenGL
              hsPkgs.filepath
              hsPkgs.directory
            ];
          };
        };
      };
    }