{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      demo = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "json-rpc-server";
          version = "0.1.4.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Kristen Kozak <grayjay@wordroute.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "JSON-RPC 2.0 on the server side.";
        description = "An implementation of the server side of JSON-RPC 2.0.\nSee <http://www.jsonrpc.org/specification>. This\nlibrary uses 'ByteString' for input and output,\nleaving the choice of transport up to the user.\nSee the \"Network.JsonRpc.Server\" module for an example.";
        buildType = "Simple";
      };
      components = {
        "json-rpc-server" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          "demo" = {
            depends  = pkgs.lib.optionals _flags.demo [
              hsPkgs.base
              hsPkgs.json-rpc-server
              hsPkgs.bytestring
              hsPkgs.mtl
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.json-rpc-server
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }