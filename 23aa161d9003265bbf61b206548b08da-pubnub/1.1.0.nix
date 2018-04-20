{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pubnub";
          version = "1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "t@crashfast.com";
        author = "Tristan Sloughter";
        homepage = "http://github.com/pubnub/haskell";
        url = "";
        synopsis = "PubNub Haskell SDK";
        description = "The PubNub Network makes Real-time easy with a Simple Communications API. Two Functions: Send/Receive (Publish/Subscribe). We provide a web-service API for businesses to build scalable Data Push communication apps on Mobile, Tablet and Web. Bidirectional JSON.";
        buildType = "Simple";
      };
      components = {
        pubnub = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.http-conduit
            hsPkgs.http-client
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.text
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.http-types
            hsPkgs.uuid
            hsPkgs.async
            hsPkgs.data-default
            hsPkgs.SHA
            hsPkgs.cipher-aes
            hsPkgs.crypto-api
            hsPkgs.crypto-cipher-types
            hsPkgs.base64-bytestring
            hsPkgs.time
          ];
        };
        exes = {
          hello_world = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.pubnub
              hsPkgs.aeson
              hsPkgs.text
            ];
          };
          chat = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.async
              hsPkgs.pubnub
              hsPkgs.text
            ];
          };
          test-pubnub-haskell = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.pubnub
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
            ];
          };
        };
        tests = {
          Tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.pubnub
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
            ];
          };
        };
      };
    }