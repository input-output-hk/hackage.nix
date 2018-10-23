{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "network-messagepack-rpc-websocket";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yuji-yamamoto@iij.ad.jp, kazu@iij.ad.jp";
      author = "Yuji Yamamoto and Kazu Yamamoto";
      homepage = "https://github.com/iij-ii/network-messagepack-rpc-websocket";
      url = "";
      synopsis = "WebSocket backend for MessagePack RPC";
      description = "WebSocket backend for \"network-messagepack-rpc\"";
      buildType = "Simple";
    };
    components = {
      "network-messagepack-rpc-websocket" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network-messagepack-rpc)
          (hsPkgs.text)
          (hsPkgs.websockets)
          (hsPkgs.wss-client)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.data-msgpack)
            (hsPkgs.envy)
            (hsPkgs.hspec)
            (hsPkgs.network-messagepack-rpc)
            (hsPkgs.network-messagepack-rpc-websocket)
            (hsPkgs.skews)
            (hsPkgs.text)
            (hsPkgs.wss-client)
          ];
        };
      };
    };
  }