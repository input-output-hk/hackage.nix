{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "grammar-combinators";
          version = "0.2.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "Dominique Devriese <dominique.devriese@gmail.com>";
        author = "Dominique Devriese <dominique.devriese@gmail.com>";
        homepage = "http://people.cs.kuleuven.be/~dominique.devriese/grammar-combinators/";
        url = "";
        synopsis = "A parsing library of context-free grammar combinators.";
        description = "The grammar-combinators library is a novel parsing library using\nan explicit representation of recursion to provide various novel\nfeatures, for grammar analysis, transformation and parsing\nfunctionality.";
        buildType = "Simple";
      };
      components = {
        grammar-combinators = {
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