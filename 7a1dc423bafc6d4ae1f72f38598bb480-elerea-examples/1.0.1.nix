{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "elerea-examples";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009, Patai Gergely";
        maintainer = "Patai Gergely (patai@iit.bme.hu)";
        author = "Patai Gergely";
        homepage = "";
        url = "";
        synopsis = "Example applications for Elerea";
        description = "Example applications for Elerea. They are factored out into their\nown package so as to avoid unnecessary dependencies in the\nlibrary. Check out the @doc@ directory for the colourful literate\nsources.\n\nThe programs included are the following:\n\n* chase: a minimal example that demonstrates reactivity and mutually\nrecursive signals\n\n* breakout: a not too fancy breakout clone that also demonstrates\nGraphviz output; you can get an SVG rendition of the signal\nstructure with the following command if Graphviz is installed:\n@elerea-breakout --dump-dot | dot -Tsvg -o breakout.svg@";
        buildType = "Simple";
      };
      components = {
        exes = {
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