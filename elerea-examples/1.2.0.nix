{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "elerea-examples";
          version = "1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009, Patai Gergely";
        maintainer = "Patai Gergely (patai@iit.bme.hu)";
        author = "Patai Gergely";
        homepage = "";
        url = "";
        synopsis = "Example applications for Elerea";
        description = "Example applications for Elerea. They are factored out into their\nown package so as to avoid unnecessary dependencies in the\nlibrary. Check out the @doc@ directory for the colourful literate\nsources.\n\nThe programs included are the following:\n\n* chase: a minimal example that demonstrates reactivity and mutually\nrecursive signals\n\n* breakout: a not too fancy breakout clone that also demonstrates\nGraphviz output; you can get an SVG rendition of the signal\nstructure with the following command if Graphviz is installed:\n@elerea-breakout --dump-dot | dot -Tsvg -o breakout.svg@\n\n* bounce: an example for creating dynamic collections of signals\nwith the experimental interface; left click to create balls, drag\nexisting balls with left button to propel them and drag with right\nto select balls for deletion (upon release)";
        buildType = "Simple";
      };
      components = {
        exes = {
          elerea-bounce = {
            depends  = [
              hsPkgs.base
              hsPkgs.elerea
              hsPkgs.OpenGL
              hsPkgs.GLFW
            ];
          };
          elerea-breakout = {
            depends  = [
              hsPkgs.base
              hsPkgs.elerea
              hsPkgs.OpenGL
              hsPkgs.GLFW
            ];
          };
          elerea-chase = {
            depends  = [
              hsPkgs.base
              hsPkgs.elerea
              hsPkgs.OpenGL
              hsPkgs.GLFW
            ];
          };
        };
      };
    }