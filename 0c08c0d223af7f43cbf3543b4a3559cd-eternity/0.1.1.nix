{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eternity";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "(c) 2018, Metrix.AI";
        maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/metrix-ai/eternity";
        url = "";
        synopsis = "Native event-sourcing database";
        description = "Streaming-based interface for an event-sourcing store.";
        buildType = "Simple";
      };
      components = {
        "eternity" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.text
            hsPkgs.directory
            hsPkgs.foldl
            hsPkgs.potoki
            hsPkgs.potoki-cereal
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.eternity
              hsPkgs.potoki
              hsPkgs.potoki-cereal
              hsPkgs.cereal
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.quickcheck-instances
              hsPkgs.QuickCheck
              hsPkgs.directory
              hsPkgs.rerebase
            ];
          };
        };
      };
    }