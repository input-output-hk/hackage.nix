{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventsource-geteventstore-store";
          version = "1.0.5";
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
        eventsource-geteventstore-store = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.eventsource-api
            hsPkgs.eventstore
            hsPkgs.mtl
            hsPkgs.string-conversions
            hsPkgs.transformers-base
          ];
        };
        tests = {
          geteventstore-store-test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.eventsource-api
              hsPkgs.eventsource-geteventstore-store
              hsPkgs.eventsource-store-specs
              hsPkgs.eventstore
              hsPkgs.protolude
              hsPkgs.tasty
              hsPkgs.tasty-hspec
            ];
          };
        };
      };
    }