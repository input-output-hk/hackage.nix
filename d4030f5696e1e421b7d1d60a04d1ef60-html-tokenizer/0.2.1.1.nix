{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "html-tokenizer";
          version = "0.2.1.1";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/html-tokenizer";
        url = "";
        synopsis = "An \"attoparsec\"-based HTML tokenizer";
        description = "This library can be used as a basis for complex HTML parsers,\nor for streaming.\nE.g., by composing it with\n<http://hackage.haskell.org/package/list-t-attoparsec the \"list-t-attoparsec\" library>\nyou can produce a token stream with HTML-entities decoded,\nthus becoming able to implement a highly efficient stream-parser,\nwhich works in a single pass, constant memory and is capable of early termination.\n<http://hackage.haskell.org/package/list-t-html-parser \"list-t-html-parser\"> is such a parser.";
        buildType = "Custom";
      };
      components = {
        html-tokenizer = {
          depends  = [
            hsPkgs.html-entities
            hsPkgs.conversion
            hsPkgs.conversion-text
            hsPkgs.conversion-case-insensitive
            hsPkgs.case-insensitive
            hsPkgs.text
            hsPkgs.attoparsec
            hsPkgs.base-prelude
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.doctest
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.base-prelude
              hsPkgs.base
            ];
          };
        };
      };
    }