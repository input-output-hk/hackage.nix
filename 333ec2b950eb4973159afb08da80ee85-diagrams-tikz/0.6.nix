{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "diagrams-tikz";
          version = "0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diagrams-discuss@googlegroups.com";
        author = "Scott N. Walck";
        homepage = "http://projects.haskell.org/diagrams";
        url = "";
        synopsis = "TikZ backend for diagrams drawing EDSL";
        description = "This package provides a modular backend for rendering\ndiagrams created with the diagrams EDSL using the\nTikZ library.";
        buildType = "Simple";
      };
      components = {
        diagrams-tikz = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.diagrams-core
            hsPkgs.diagrams-lib
            hsPkgs.dlist
          ];
        };
      };
    }