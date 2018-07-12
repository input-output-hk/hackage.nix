{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventsource-geteventstore-store";
          version = "1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yo.eight@gmail.comm";
        author = "Yorick Laupa";
        homepage = "https://github.com/YoEight/eventsource-api#readme";
        url = "";
        synopsis = "GetEventStore store implementation.";
        description = "GetEventStore store implementation.";
        buildType = "Simple";
      };
      components = {
        "eventsource-geteventstore-store" = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.eventstore
            hsPkgs.eventsource-api
            hsPkgs.aeson
            hsPkgs.mtl
          ];
        };
        tests = {
          "geteventstore-store-test-suite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.eventsource-geteventstore-store
              hsPkgs.eventsource-api
              hsPkgs.eventsource-store-specs
              hsPkgs.eventstore
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.protolude
            ];
          };
        };
      };
    }