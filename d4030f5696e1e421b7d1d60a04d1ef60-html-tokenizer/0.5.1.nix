{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "html-tokenizer";
          version = "0.5.1";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/html-tokenizer";
        url = "";
        synopsis = "An \"attoparsec\"-based HTML tokenizer";
        description = "This library can be used as a basis for streaming HTML parsers.";
        buildType = "Simple";
      };
      components = {
        "html-tokenizer" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base-prelude
            hsPkgs.html-entities
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.text-builder
            hsPkgs.vector
            hsPkgs.vector-builder
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.html-tokenizer
              hsPkgs.attoparsec
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.quickcheck-instances
              hsPkgs.QuickCheck
              hsPkgs.rerebase
            ];
          };
        };
      };
    }