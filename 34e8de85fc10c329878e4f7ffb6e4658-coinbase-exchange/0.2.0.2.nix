{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "coinbase-exchange";
          version = "0.2.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrewrademacher@gmail.com";
        author = "Andrew Rademacher";
        homepage = "";
        url = "";
        synopsis = "Connector library for the coinbase exchange.";
        description = "Access library for the coinbase exchange. Allows the use\nof both the public market data API as well as the private\naccount data API. Additionally provides types to connect\nto the streaming API via a websocket.";
        buildType = "Simple";
      };
      components = {
        coinbase-exchange = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.transformers-base
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.http-conduit
            hsPkgs.aeson
            hsPkgs.aeson-casing
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
            hsPkgs.time
            hsPkgs.scientific
            hsPkgs.uuid
            hsPkgs.uuid-aeson
            hsPkgs.vector
            hsPkgs.hashable
            hsPkgs.deepseq
            hsPkgs.network
            hsPkgs.websockets
            hsPkgs.wuss
            hsPkgs.cryptohash
            hsPkgs.byteable
            hsPkgs.exceptions
            hsPkgs.old-locale
          ];
        };
        exes = {
          sandbox = {
            depends  = [
              hsPkgs.base
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.uuid
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.conduit
              hsPkgs.conduit-extra
              hsPkgs.http-conduit
              hsPkgs.resourcet
              hsPkgs.websockets
              hsPkgs.transformers
              hsPkgs.network
              hsPkgs.wuss
              hsPkgs.scientific
              hsPkgs.coinbase-exchange
            ];
          };
        };
        tests = {
          test-coinbase = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-th
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.uuid
              hsPkgs.bytestring
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.http-client-tls
              hsPkgs.http-conduit
              hsPkgs.transformers
              hsPkgs.coinbase-exchange
            ];
          };
        };
      };
    }