{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventstore";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "yo.eight@gmail.com";
        author = "Yorick Laupa";
        homepage = "";
        url = "";
        synopsis = "EventStore Haskell TCP Client";
        description = "EventStore Haskell TCP Client";
        buildType = "Simple";
      };
      components = {
        eventstore = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.aeson
            hsPkgs.async
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.network
            hsPkgs.protobuf
            hsPkgs.random
            hsPkgs.stm
            hsPkgs.suspend
            hsPkgs.text
            hsPkgs.time
            hsPkgs.timers
            hsPkgs.uuid
          ];
        };
      };
    }