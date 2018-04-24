{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "diagrams-lib";
          version = "1.1.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diagrams-discuss@googlegroups.com";
        author = "Brent Yorgey";
        homepage = "http://projects.haskell.org/diagrams";
        url = "";
        synopsis = "Embedded domain-specific language for declarative graphics";
        description = "Diagrams is a flexible, extensible EDSL for creating\ngraphics of many types.  Graphics can be created\nin arbitrary vector spaces and rendered with\nmultiple backends.  diagrams-lib provides a\nstandard library of primitives and operations for\ncreating diagrams.  To get started using it, see\n\"Diagrams.Prelude\".";
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
            hsPkgs.diagrams-core
            hsPkgs.active
            hsPkgs.vector-space
            hsPkgs.vector-space-points
            hsPkgs.MemoTrie
            hsPkgs.colour
            hsPkgs.data-default-class
            hsPkgs.pretty
            hsPkgs.fingertree
            hsPkgs.intervals
            hsPkgs.lens
            hsPkgs.tagged
            hsPkgs.optparse-applicative
            hsPkgs.filepath
            hsPkgs.safe
            hsPkgs.hashable
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") hsPkgs.ghc-prim;
        };
      };
    }