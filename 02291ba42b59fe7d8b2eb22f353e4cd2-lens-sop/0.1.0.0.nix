{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lens-sop";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "edsko@well-typed.com";
        author = "Edsko de Vries <edsko@well-typed.com>, Andres Löh <andres@well-typed.com>";
        homepage = "";
        url = "";
        synopsis = "Computing lenses generically using generics-sop";
        description = "This library contains a definition of generalized lenses that are built\non top of the @<https://hackage.haskell.org/fclabels fclabels>@ package.\n\nIt also contains SOP-style generic functions (based on the\n@<https://hackage.haskell.org/generics-sop generics-sop>@ package) that\ncompute lenses for a given record type. Generalized lenses for the\nSOP representation types are also provided.\n\nFurthermore, a generic function is provided that computes a lens from\na given (string-based) path specification.\n";
        buildType = "Simple";
      };
      components = {
        lens-sop = {
          depends  = [
            hsPkgs.base
            hsPkgs.generics-sop
            hsPkgs.fclabels
            hsPkgs.transformers
          ];
        };
      };
    }