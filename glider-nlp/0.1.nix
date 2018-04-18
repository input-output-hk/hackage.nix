{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "glider-nlp";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "klangner@gmail.com";
        author = "Krzysztof Langner";
        homepage = "https://github.com/klangner/glider-nlp";
        url = "";
        synopsis = "Natural Language Processing library";
        description = "Natural Language Processing (NLP) library.\n\nCheck module in folder \"Glider.NLP.Statistics\" for universal functions and\nGlider.NLP.Language.language for functions designed for specific language.";
        buildType = "Simple";
      };
      components = {
        glider-nlp = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.containers
          ];
        };
        tests = {
          unit-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.Cabal
              hsPkgs.text
              hsPkgs.containers
            ];
          };
        };
      };
    }