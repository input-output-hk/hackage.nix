{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventstore";
          version = "0.15.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Yorick Laupa";
        maintainer = "yo.eight@gmail.com";
        author = "Yorick Laupa";
        homepage = "https://github.com/YoEight/eventstore#readme";
        url = "";
        synopsis = "EventStore TCP Client";
        description = "EventStore TCP Client <http://geteventstore.com>";
        buildType = "Simple";
      };
      components = {
        eventstore = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.mono-traversable
            hsPkgs.connection
            hsPkgs.dotnet-timespan
            hsPkgs.stm
            hsPkgs.time
            hsPkgs.uuid
            hsPkgs.lifted-base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.semigroups
            hsPkgs.hashable
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.stm-chans
            hsPkgs.stm
            hsPkgs.lifted-async
            hsPkgs.safe-exceptions
            hsPkgs.monad-control
            hsPkgs.exceptions
            hsPkgs.transformers-base
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.protobuf
            hsPkgs.random
            hsPkgs.unordered-containers
            hsPkgs.semigroups
            hsPkgs.dns
            hsPkgs.array
            hsPkgs.http-client
            hsPkgs.mtl
            hsPkgs.fast-logger
            hsPkgs.monad-logger
            hsPkgs.text-format
            hsPkgs.clock
            hsPkgs.machines
            hsPkgs.bifunctors
            hsPkgs.interpolate
            hsPkgs.ekg-core
          ];
        };
        tests = {
          eventstore-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.mono-traversable
              hsPkgs.connection
              hsPkgs.dotnet-timespan
              hsPkgs.stm
              hsPkgs.time
              hsPkgs.uuid
              hsPkgs.lifted-base
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.semigroups
              hsPkgs.hashable
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.stm-chans
              hsPkgs.stm
              hsPkgs.lifted-async
              hsPkgs.safe-exceptions
              hsPkgs.monad-control
              hsPkgs.exceptions
              hsPkgs.transformers-base
              hsPkgs.eventstore
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-hspec
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.protobuf
              hsPkgs.cereal
              hsPkgs.uuid
              hsPkgs.fast-logger
              hsPkgs.async
            ];
          };
        };
      };
    }