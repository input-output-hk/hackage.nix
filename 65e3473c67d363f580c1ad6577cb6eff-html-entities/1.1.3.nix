{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "html-entities";
          version = "1.1.3";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/html-entities";
        url = "";
        synopsis = "A codec library for HTML-escaped text and HTML-entities";
        description = "This library provides the following APIs for coding and decoding of\nHTML-escaped text:\n\n* \\\"attoparsec\\\" parser\n\n* Text decoder\n\n* Encoding text builder";
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