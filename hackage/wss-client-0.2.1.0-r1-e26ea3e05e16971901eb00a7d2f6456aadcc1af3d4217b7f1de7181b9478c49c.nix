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
    flags = { build-sample = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "wss-client"; version = "0.2.1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "yuji-yamamoto@iij.ad.jp";
      author = "Yuji Yamamoto";
      homepage = "https://github.com/iij-ii/wss-client";
      url = "";
      synopsis = "A-little-higher-level WebSocket client.";
      description = "A-little-higher-level WebSocket client. Based on http-client and http-client-tls.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          ];
        };
      exes = {
        "wss-client-sample" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wss-client" or (buildDepError "wss-client"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      tests = {
        "wss-client-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wss-client" or (buildDepError "wss-client"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."envy" or (buildDepError "envy"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."skews" or (buildDepError "skews"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }