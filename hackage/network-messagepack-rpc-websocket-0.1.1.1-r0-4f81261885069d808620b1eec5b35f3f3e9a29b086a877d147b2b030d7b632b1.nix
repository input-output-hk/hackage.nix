{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "network-messagepack-rpc-websocket";
        version = "0.1.1.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yuji-yamamoto@iij.ad.jp, kazu@iij.ad.jp";
      author = "Yuji Yamamoto and Kazu Yamamoto";
      homepage = "https://github.com/iij-ii/direct-hs/tree/master/network-messagepack-rpc-websocket";
      url = "";
      synopsis = "WebSocket backend for MessagePack RPC";
      description = "WebSocket backend for \"network-messagepack-rpc\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network-messagepack-rpc" or (errorHandler.buildDepError "network-messagepack-rpc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."wss-client" or (errorHandler.buildDepError "wss-client"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-msgpack" or (errorHandler.buildDepError "data-msgpack"))
            (hsPkgs."envy" or (errorHandler.buildDepError "envy"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."network-messagepack-rpc" or (errorHandler.buildDepError "network-messagepack-rpc"))
            (hsPkgs."network-messagepack-rpc-websocket" or (errorHandler.buildDepError "network-messagepack-rpc-websocket"))
            (hsPkgs."skews" or (errorHandler.buildDepError "skews"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wss-client" or (errorHandler.buildDepError "wss-client"))
            ];
          buildable = true;
          };
        };
      };
    }