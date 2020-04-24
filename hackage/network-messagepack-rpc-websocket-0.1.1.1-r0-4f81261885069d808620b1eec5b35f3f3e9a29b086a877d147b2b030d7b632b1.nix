{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network-messagepack-rpc" or ((hsPkgs.pkgs-errors).buildDepError "network-messagepack-rpc"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          (hsPkgs."wss-client" or ((hsPkgs.pkgs-errors).buildDepError "wss-client"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."data-msgpack" or ((hsPkgs.pkgs-errors).buildDepError "data-msgpack"))
            (hsPkgs."envy" or ((hsPkgs.pkgs-errors).buildDepError "envy"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."network-messagepack-rpc" or ((hsPkgs.pkgs-errors).buildDepError "network-messagepack-rpc"))
            (hsPkgs."network-messagepack-rpc-websocket" or ((hsPkgs.pkgs-errors).buildDepError "network-messagepack-rpc-websocket"))
            (hsPkgs."skews" or ((hsPkgs.pkgs-errors).buildDepError "skews"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."wss-client" or ((hsPkgs.pkgs-errors).buildDepError "wss-client"))
            ];
          buildable = true;
          };
        };
      };
    }