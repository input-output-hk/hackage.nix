{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventsource-stub-store";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yo.eight@gmail.com";
        author = "Yorick Laupa";
        homepage = "https://github.com/YoEight/eventsource-api#readme";
        url = "";
        synopsis = "An in-memory stub store implementation.";
        description = "An in-memory stub store implementation.";
        buildType = "Simple";
      };
      components = {
        eventsource-stub-store = {
          depends  = [
            hsPkgs.base
            hsPkgs.eventsource-api
            hsPkgs.protolude
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.stm
          ];
        };
        tests = {
          eventsource-stub-store-test-suite = {
            depends  = [
              hsPkgs.base
              hsPkgs.eventsource-store-specs
              hsPkgs.eventsource-stub-store
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.protolude
            ];
          };
        };
      };
    }