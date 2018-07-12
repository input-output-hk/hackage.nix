{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "eventstore";
          version = "0.1.0.1";
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
        "eventstore" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.aeson
            hsPkgs.async
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.network
            hsPkgs.protobuf
            hsPkgs.random
            hsPkgs.sodium
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.uuid
          ];
        };
      };
    }