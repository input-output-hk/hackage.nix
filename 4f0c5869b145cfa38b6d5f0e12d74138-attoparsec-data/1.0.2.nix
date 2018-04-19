{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "attoparsec-data";
          version = "1.0.2";
        };
        license = "MIT";
        copyright = "(c) 2017, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/attoparsec-data";
        url = "";
        synopsis = "Parsers for the standard Haskell data types";
        description = "";
        buildType = "Simple";
      };
      components = {
        attoparsec-data = {
          depends  = [
            hsPkgs.time
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.attoparsec-time
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
      };
    }