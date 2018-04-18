{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "html-entities";
          version = "1.0.0.2";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/html-entities";
        url = "";
        synopsis = "An \"attoparsec\" parser and a decoder of HTML entities";
        description = "";
        buildType = "Custom";
      };
      components = {
        html-entities = {
          depends  = [
            hsPkgs.unordered-containers
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