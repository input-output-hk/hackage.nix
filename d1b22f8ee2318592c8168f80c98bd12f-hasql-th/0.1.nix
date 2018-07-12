{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hasql-th";
          version = "0.1";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/hasql-th";
        url = "";
        synopsis = "Template Haskell utilities for Hasql";
        description = "";
        buildType = "Simple";
      };
      components = {
        "hasql-th" = {
          depends  = [
            hsPkgs.hasql
            hsPkgs.hasql-transaction
            hsPkgs.template-haskell
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.base-prelude
          ];
        };
      };
    }