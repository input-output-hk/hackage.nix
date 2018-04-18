{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "danibot";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "2015 Daniel Diaz";
        maintainer = "diaz_carrete@yahoo.com";
        author = "Daniel Diaz";
        homepage = "";
        url = "";
        synopsis = "Basic Slack bot framework.";
        description = "";
        buildType = "Simple";
      };
      components = {
        danibot = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.wreq
            hsPkgs.network
            hsPkgs.websockets
            hsPkgs.wuss
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.monoid-subclasses
            hsPkgs.containers
            hsPkgs.conceit
            hsPkgs.attoparsec
            hsPkgs.stm
            hsPkgs.async
            hsPkgs.foldl
            hsPkgs.streaming
          ];
        };
        exes = {
          danibot = {
            depends  = [
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.danibot
            ];
          };
        };
      };
    }