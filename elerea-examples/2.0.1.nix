{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "elerea-examples";
          version = "2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009, Patai Gergely";
        maintainer = "Patai Gergely (patai@iit.bme.hu)";
        author = "Patai Gergely";
        homepage = "";
        url = "";
        synopsis = "Example applications for Elerea";
        description = "Example applications for Elerea. They are factored out into their\nown package so as to avoid unnecessary dependencies in the\nlibrary. Check out the @doc@ directory for the colourful literate\nsources.\n\nThe programs included are the following:\n\n* bounce (current): an example for creating dynamic collections of\nsignals with the experimental interface; left click to create\nballs, drag existing balls with left button to propel them and\ndrag with right to select balls for deletion (upon release)\n\n* chase (legacy): a minimal example that demonstrates reactivity and\nmutually recursive signals\n\n* breakout (legacy): a not too fancy breakout clone that also\ndemonstrates Graphviz output; you can get an SVG rendition of the\nsignal structure with the following command if Graphviz is\ninstalled: @elerea-breakout --dump-dot | dot -Tsvg -o\nbreakout.svg@";
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