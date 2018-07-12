{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      graphviz = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "lp-diagrams";
          version = "2.1.0";
        };
        license = "AGPL-3.0-only";
        copyright = "Jean-Philippe Bernardy";
        maintainer = "jeanphilippe.bernardy@gmail.com";
        author = "Jean-Philippe Bernardy";
        homepage = "";
        url = "";
        synopsis = "An EDSL for diagrams based based on linear constraints";
        description = "A library to describe diagrams. The defining\nfeature of the package is the ability to use linear constraints to\nspecify layout, which are resolved using z3 (latest z3 must be installed).\nBackends are provided either of the following packages lp-diagrams-svg (svg) or marxup (tikz).";
        buildType = "Simple";
      };
      components = {
        "lp-diagrams" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.typography-geometry
            hsPkgs.gasp
            hsPkgs.reflection
            hsPkgs.vector
            hsPkgs.polynomials-bernstein
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.labeled-tree
            hsPkgs.parsek
            hsPkgs.process
          ] ++ pkgs.lib.optional _flags.graphviz hsPkgs.graphviz;
        };
      };
    }