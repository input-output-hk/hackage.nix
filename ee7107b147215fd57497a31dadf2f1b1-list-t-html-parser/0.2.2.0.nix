{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "list-t-html-parser";
          version = "0.2.2.0";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/list-t-html-parser";
        url = "";
        synopsis = "Streaming HTML parser";
        description = "";
        buildType = "Simple";
      };
      components = {
        "list-t-html-parser" = {
          depends  = [
            hsPkgs.list-t
            hsPkgs.html-tokenizer
            hsPkgs.html-entities
            hsPkgs.case-insensitive
            hsPkgs.text
            hsPkgs.either
            hsPkgs.mtl-prelude
            hsPkgs.base-prelude
          ];
        };
        tests = {
          "hspec" = {
            depends  = [
              hsPkgs.hspec
              hsPkgs.list-t-html-parser
              hsPkgs.list-t-attoparsec
              hsPkgs.list-t-text
              hsPkgs.html-tokenizer
              hsPkgs.conversion
              hsPkgs.conversion-text
              hsPkgs.text
              hsPkgs.base-prelude
            ];
          };
        };
      };
    }