{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "symantic";
          version = "6.3.1.20180213";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Julien Moutinho <julm+symantic@autogeree.net>";
        author = "Julien Moutinho <julm+symantic@autogeree.net>";
        homepage = "";
        url = "";
        synopsis = "Library for Typed Tagless-Final Higher-Order Composable DSL";
        description = "This is an experimental library for composing, parsing,\ntyping, compiling, transforming and interpreting\na custom DSL (Domain-Specific Language)\nexpressing a subset of GHC's Haskell type system.";
        buildType = "Simple";
      };
      components = {
        "symantic" = {
          depends  = [
            hsPkgs.symantic-grammar
            hsPkgs.symantic-document
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mono-traversable
            hsPkgs.transformers
            hsPkgs.text
          ];
        };
      };
    }