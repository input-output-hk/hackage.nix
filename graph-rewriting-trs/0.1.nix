{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "graph-rewriting-trs";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011, Jan Rochel";
        maintainer = "jan@rochel.info";
        author = "Jan Rochel";
        homepage = "http://rochel.info/#graph-rewriting";
        url = "";
        synopsis = "Evaluate a first-order term rewrite system interactively using graph reduction";
        description = "Given a set of term rewriting rules (see examples) and a term with this tool you can interactively evaluate the corresponding term graph by applying the rules, which are translated into their graph rewriting equivalents.";
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