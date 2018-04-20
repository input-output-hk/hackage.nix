{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "basic-sop";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "edsko@well-typed.com";
        author = "Edsko de Vries <edsko@well-typed.com>, Andres Löh <andres@well-typed.com>";
        homepage = "";
        url = "";
        synopsis = "Basic examples and functions for generics-sop";
        description = "This library contains various small examples of generic functions\nwritten using the @<https://hackage.haskell.org/package/generics-sop generics-sop>@\nlibrary.\n\nIt is a good starting point if you want to see how generic functions\ncan be defined in the SOP style.\n";
        buildType = "Simple";
      };
      components = {
        basic-sop = {
          depends  = [
            hsPkgs.base
            hsPkgs.generics-sop
            hsPkgs.text
            hsPkgs.QuickCheck
            hsPkgs.deepseq
          ];
        };
      };
    }