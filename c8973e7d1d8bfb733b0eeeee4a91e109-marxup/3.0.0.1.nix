{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "marxup";
          version = "3.0.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jeanphilippe.bernardy@gmail.com";
        author = "Jean-Philippe Bernardy";
        homepage = "";
        url = "";
        synopsis = "Markup language preprocessor for Haskell";
        description = "Markup syntax preprocessor for Haskell. Steals ideas from the Scribble project (in Scheme).\nThe package also provides a DSL to output Latex seamlessly from MarXup output.";
        buildType = "Simple";
      };
      components = {
        marxup = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.labeled-tree
            hsPkgs.filepath
            hsPkgs.containers
            hsPkgs.process
            hsPkgs.glpk-hs
            hsPkgs.cubicbezier
            hsPkgs.lens
            hsPkgs.directory
            hsPkgs.typography-geometry
            hsPkgs.polynomials-bernstein
            hsPkgs.vector
            hsPkgs.graphviz
            hsPkgs.text
          ];
        };
        exes = {
          marxup3 = {
            depends  = [
              hsPkgs.configurator
              hsPkgs.base
              hsPkgs.pretty
              hsPkgs.parsek
              hsPkgs.dlist
            ];
          };
        };
      };
    }