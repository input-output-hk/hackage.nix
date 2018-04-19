{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventstore";
          version = "0.14.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yo.eight@gmail.com";
        author = "Yorick Laupa";
        homepage = "http://github.com/YoEight/eventstore";
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
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.protobuf
            hsPkgs.random
            hsPkgs.time
            hsPkgs.uuid
            hsPkgs.unordered-containers
            hsPkgs.stm
            hsPkgs.semigroups
            hsPkgs.dns
            hsPkgs.array
            hsPkgs.http-client
            hsPkgs.dotnet-timespan
            hsPkgs.connection
            hsPkgs.classy-prelude
            hsPkgs.mtl
          ];
        };
        tests = {
          integration-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.eventstore
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.stm
              hsPkgs.time
              hsPkgs.dotnet-timespan
              hsPkgs.connection
              hsPkgs.classy-prelude
              hsPkgs.uuid
            ];
          };
        };
      };
    }