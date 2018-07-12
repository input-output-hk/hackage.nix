{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "grammar-combinators";
          version = "0.2.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Dominique Devriese <dominique.devriese@gmail.com>";
        author = "Dominique Devriese <dominique.devriese@gmail.com>";
        homepage = "http://projects.haskell.org/grammar-combinators/";
        url = "";
        synopsis = "A parsing library of context-free grammar combinators.";
        description = "The grammar-combinators library is a novel parsing library using\nan explicit representation of recursion to provide various novel\nfeatures, for grammar analysis, transformation and parsing\nfunctionality.";
        buildType = "Simple";
      };
      components = {
        "grammar-combinators" = {
          depends  = [
            hsPkgs.base
            hsPkgs.multirec
            hsPkgs.template-haskell
            hsPkgs.enumerable
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.MaybeT
            hsPkgs.uu-parsinglib
            hsPkgs.graphviz
            hsPkgs.fgl
          ];
        };
      };
    }