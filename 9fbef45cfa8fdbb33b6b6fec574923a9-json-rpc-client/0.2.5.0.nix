{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      demo = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "json-rpc-client";
          version = "0.2.5.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Kristen Kozak <grayjay@wordroute.com>";
        author = "Kristen Kozak";
        homepage = "https://github.com/grayjay/json-rpc-client";
        url = "";
        synopsis = "JSON-RPC 2.0 on the client side.";
        description = "Functions for creating a JSON-RPC 2.0 client.  See\n<http://www.jsonrpc.org/specification>. This library supports\nbatch requests and notifications, as well as single method\ncalls.  It also provides a function for creating corresponding\nserver-side methods with the package\n<http://hackage.haskell.org/package/json-rpc-server json-rpc-server>.\nThis library does not handle transport, so a function for\ncommunicating with the server must be provided.\nThe demo folder contains an example client and server that can\nbe compiled with the demo flag.  See \"Network.JsonRpc.Client\"\nfor details.";
        buildType = "Simple";
      };
      components = {
        json-rpc-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.json-rpc-server
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-algorithms
          ];
        };
        exes = {
          demo-server = {
            depends  = optionals _flags.demo [
              hsPkgs.base
              hsPkgs.json-rpc-client
              hsPkgs.json-rpc-server
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.text
            ];
          };
          demo-client = {
            depends  = optionals _flags.demo [
              hsPkgs.base
              hsPkgs.json-rpc-client
              hsPkgs.json-rpc-server
              hsPkgs.process
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.text
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.json-rpc-client
              hsPkgs.json-rpc-server
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.scientific
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }