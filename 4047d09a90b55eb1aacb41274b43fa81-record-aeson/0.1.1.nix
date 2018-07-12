{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "record-aeson";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/record-aeson";
        url = "";
        synopsis = "Instances of \"aeson\" classes for the \"record\" types";
        description = "";
        buildType = "Simple";
      };
      components = {
        "record-aeson" = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.aeson
            hsPkgs.record
            hsPkgs.base-prelude
            hsPkgs.base
          ];
        };
        tests = {
          "hspec" = {
            depends  = [
              hsPkgs.hspec
              hsPkgs.record
              hsPkgs.record-aeson
              hsPkgs.aeson
              hsPkgs.base-prelude
            ];
          };
        };
      };
    }