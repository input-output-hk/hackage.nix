{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "diagrams-lib";
        version = "0.6.0.2";
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
      "diagrams-lib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.semigroups)
          (hsPkgs.monoid-extras)
          (hsPkgs.diagrams-core)
          (hsPkgs.active)
          (hsPkgs.vector-space)
          (hsPkgs.NumInstances)
          (hsPkgs.colour)
          (hsPkgs.data-default)
          (hsPkgs.pretty)
          (hsPkgs.newtype)
        ];
      };
    };
  }