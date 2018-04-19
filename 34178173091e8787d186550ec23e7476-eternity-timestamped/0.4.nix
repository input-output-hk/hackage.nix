{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eternity-timestamped";
          version = "0.4";
        };
        license = "MIT";
        copyright = "(c) 2018, Metrix.AI";
        maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/metrix-ai/eternity-timestamped";
        url = "";
        synopsis = "Automatic timestamping for Eternity";
        description = "";
        buildType = "Simple";
      };
      components = {
        eternity-timestamped = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.directory
            hsPkgs.eternity
            hsPkgs.generic-random
            hsPkgs.hashable
            hsPkgs.potoki
            hsPkgs.QuickCheck
            hsPkgs.text
            hsPkgs.time
            hsPkgs.timestamp
          ];
        };
      };
    }