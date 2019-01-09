{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "diagrams-lib"; version = "1.4.0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.semigroups)
          (hsPkgs.monoid-extras)
          (hsPkgs.dual-tree)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-solve)
          (hsPkgs.active)
          (hsPkgs.colour)
          (hsPkgs.data-default-class)
          (hsPkgs.fingertree)
          (hsPkgs.intervals)
          (hsPkgs.lens)
          (hsPkgs.tagged)
          (hsPkgs.optparse-applicative)
          (hsPkgs.filepath)
          (hsPkgs.JuicyPixels)
          (hsPkgs.hashable)
          (hsPkgs.linear)
          (hsPkgs.adjunctions)
          (hsPkgs.distributive)
          (hsPkgs.process)
          (hsPkgs.fsnotify)
          (hsPkgs.directory)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.profunctors)
          (hsPkgs.exceptions)
          (hsPkgs.cereal)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs.ghc-prim);
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.deepseq)
            (hsPkgs.diagrams-lib)
            (hsPkgs.lens)
            (hsPkgs.numeric-extras)
            (hsPkgs.diagrams-solve)
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.diagrams-core)
            (hsPkgs.diagrams-lib)
            ];
          };
        };
      };
    }