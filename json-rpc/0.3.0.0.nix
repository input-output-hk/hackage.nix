{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "json-rpc";
          version = "0.3.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "root@haskoin.com";
        author = "Jean-Pierre Rupp";
        homepage = "https://github.com/xenog/json-rpc";
        url = "";
        synopsis = "Fully-featured JSON-RPC 2.0 library";
        description = "This JSON-RPC library is fully-compatible with JSON-RPC 2.0 and 1.0. It\nprovides an interface that combines a JSON-RPC client and server. It can set\nand keep track of request ids to parse responses. There is support for\nsending and receiving notifications.  You may use any underlying transport.\nBasic TCP client and server provided.";
        buildType = "Simple";
      };
      components = {
        json-rpc = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.async
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.stm-conduit
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          test-json-rpc = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.async
              hsPkgs.bytestring
              hsPkgs.json-rpc
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.stm
              hsPkgs.stm-conduit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }