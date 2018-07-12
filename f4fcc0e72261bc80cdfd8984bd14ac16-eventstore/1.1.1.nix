{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventstore";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Yorick Laupa";
        maintainer = "yo.eight@gmail.com";
        author = "Yorick Laupa";
        homepage = "https://github.com/YoEight/eventstore#readme";
        url = "";
        synopsis = "EventStore TCP Client";
        description = "EventStore TCP Client <https://eventstore.org>";
        buildType = "Simple";
      };
      components = {
        "eventstore" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.clock
            hsPkgs.connection
            hsPkgs.containers
            hsPkgs.dns
            hsPkgs.dotnet-timespan
            hsPkgs.ekg-core
            hsPkgs.exceptions
            hsPkgs.fast-logger
            hsPkgs.hashable
            hsPkgs.http-client
            hsPkgs.interpolate
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.machines
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mono-traversable
            hsPkgs.mtl
            hsPkgs.protobuf
            hsPkgs.random
            hsPkgs.safe-exceptions
            hsPkgs.semigroups
            hsPkgs.stm
            hsPkgs.stm-chans
            hsPkgs.text
            hsPkgs.text-format
            hsPkgs.time
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
            hsPkgs.uuid
          ];
        };
        tests = {
          "eventstore-tests" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.connection
              hsPkgs.containers
              hsPkgs.dotnet-timespan
              hsPkgs.eventstore
              hsPkgs.exceptions
              hsPkgs.fast-logger
              hsPkgs.hashable
              hsPkgs.lifted-async
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.mono-traversable
              hsPkgs.protobuf
              hsPkgs.safe-exceptions
              hsPkgs.semigroups
              hsPkgs.stm
              hsPkgs.stm-chans
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers-base
              hsPkgs.unordered-containers
              hsPkgs.uuid
            ];
          };
        };
      };
    }