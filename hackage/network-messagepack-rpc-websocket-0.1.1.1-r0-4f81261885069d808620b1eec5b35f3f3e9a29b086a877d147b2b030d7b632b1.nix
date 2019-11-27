let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network-messagepack-rpc" or (buildDepError "network-messagepack-rpc"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."wss-client" or (buildDepError "wss-client"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."data-msgpack" or (buildDepError "data-msgpack"))
            (hsPkgs."envy" or (buildDepError "envy"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."network-messagepack-rpc" or (buildDepError "network-messagepack-rpc"))
            (hsPkgs."network-messagepack-rpc-websocket" or (buildDepError "network-messagepack-rpc-websocket"))
            (hsPkgs."skews" or (buildDepError "skews"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wss-client" or (buildDepError "wss-client"))
            ];
          buildable = true;
          };
        };
      };
    }