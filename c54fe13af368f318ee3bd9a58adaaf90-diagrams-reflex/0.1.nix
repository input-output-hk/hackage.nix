{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diagrams-reflex";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diagrams-discuss@googlegroups.com";
        author = "Daniel Bergey";
        homepage = "http://projects.haskell.org/diagrams/";
        url = "";
        synopsis = "reflex backend for diagrams drawing EDSL.";
        description = "This package provides a modular backend for rendering\ndiagrams created with the diagrams EDSL to dynamic inline SVGs.\nIt uses @reflex-dom@ and the @reflex@ FRP system.";
        buildType = "Simple";
      };
      components = {
        diagrams-reflex = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.colour
            hsPkgs.diagrams-core
            hsPkgs.diagrams-lib
            hsPkgs.monoid-extras
            hsPkgs.reflex-dom
            hsPkgs.reflex
            hsPkgs.reflex-dom-contrib
            hsPkgs.containers
            hsPkgs.lens
          ];
        };
      };
    }