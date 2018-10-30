{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { demo = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "json-rpc-server";
        version = "0.2.6.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Kristen Kozak <grayjay@wordroute.com>";
      author = "";
      homepage = "https://github.com/grayjay/json-rpc-server";
      url = "";
      synopsis = "JSON-RPC 2.0 on the server side.";
      description = "An implementation of the server side of JSON-RPC 2.0.\nSee <http://www.jsonrpc.org/specification>. This\nlibrary uses 'ByteString' for input and output,\nleaving the choice of transport up to the user.\nSee the \"Network.JsonRpc.Server\" module for an example.\njson-rpc-server can be used with\n<http://hackage.haskell.org/package/json-rpc-client json-rpc-client>\nto create a client and server that communicate\nwith the same methods.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.deepseq)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "demo" = {
          depends  = pkgs.lib.optionals (flags.demo) [
            (hsPkgs.base)
            (hsPkgs.json-rpc-server)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.json-rpc-server)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }