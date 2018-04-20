{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diagrams-lib";
          version = "1.3.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diagrams-discuss@googlegroups.com";
        author = "Brent Yorgey";
        homepage = "http://projects.haskell.org/diagrams";
        url = "";
        synopsis = "Embedded domain-specific language for declarative graphics";
        description = "Diagrams is a flexible, extensible EDSL for creating\ngraphics of many types.  Graphics can be created\nin arbitrary vector spaces and rendered with\nmultiple backends.  diagrams-lib provides a\nstandard library of primitives and operations for\ncreating diagrams.  To get started using it, see\nthe \"Diagrams\" module, and refer to the tutorials and\ndocumentation on the diagrams website,\n<http://projects.haskell.org/diagrams>.";
        buildType = "Simple";
      };
      components = {
        diagrams-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.semigroups
            hsPkgs.monoid-extras
            hsPkgs.dual-tree
            hsPkgs.diagrams-core
            hsPkgs.diagrams-solve
            hsPkgs.active
            hsPkgs.colour
            hsPkgs.data-default-class
            hsPkgs.fingertree
            hsPkgs.intervals
            hsPkgs.lens
            hsPkgs.tagged
            hsPkgs.optparse-applicative
            hsPkgs.filepath
            hsPkgs.JuicyPixels
            hsPkgs.hashable
            hsPkgs.linear
            hsPkgs.adjunctions
            hsPkgs.distributive
            hsPkgs.process
            hsPkgs.fsnotify
            hsPkgs.directory
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.exceptions
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.diagrams-lib
            ];
          };
        };
      };
    }