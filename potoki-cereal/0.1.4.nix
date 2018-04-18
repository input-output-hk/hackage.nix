{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "potoki-cereal";
          version = "0.1.4";
        };
        license = "MIT";
        copyright = "(c) 2017, Metrix.AI";
        maintainer = "Metrix.AI Tech Team <tech@metrix.ai>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/metrix-ai/potoki-cereal";
        url = "";
        synopsis = "Streaming serialization";
        description = "";
        buildType = "Simple";
      };
      components = {
        potoki-cereal = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-prelude
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.potoki
            hsPkgs.potoki-core
            hsPkgs.text
          ];
        };
      };
    }