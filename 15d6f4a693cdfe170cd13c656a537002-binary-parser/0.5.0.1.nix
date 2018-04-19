{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "binary-parser";
          version = "0.5.0.1";
        };
        license = "MIT";
        copyright = "(c) 2015, Nikita Volkov";
        maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/nikita-volkov/binary-parser";
        url = "";
        synopsis = "A highly-efficient but limited parser API specialised for bytestrings";
        description = "";
        buildType = "Simple";
      };
      components = {
        binary-parser = {
          depends  = [
            hsPkgs.success
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.base-prelude
          ];
        };
      };
    }