{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-conll";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Sergey Bushnyak, Michal Gajda, Alejandro Duran-Pallares";
        maintainer = "sergey.bushnyak@sigrlami.eu";
        author = "Sergey Bushnyak, Alejandro Duran-Pallares, Michal Gajda";
        homepage = "https://github.com/sigrlami/haskell-conll#readme";
        url = "";
        synopsis = "Core Types for NLP";
        description = "Provides core types to work with CoreNLP, SyntaxNet. Handling CoNLL format and Syntax Trees.";
        buildType = "Simple";
      };
      components = {
        haskell-conll = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.pretty-show
            hsPkgs.protolude
            hsPkgs.split
            hsPkgs.text
          ];
        };
      };
    }