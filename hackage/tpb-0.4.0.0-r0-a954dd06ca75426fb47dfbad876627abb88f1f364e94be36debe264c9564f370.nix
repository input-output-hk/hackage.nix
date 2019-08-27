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
      identifier = { name = "tpb"; version = "0.4.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Jacob Thomas Errington 2017";
      maintainer = "hackage@mail.jerrington.me";
      author = "Jacob Thomas Errington";
      homepage = "";
      url = "";
      synopsis = "Applications for interacting with the Pushbullet API";
      description = "This package provides two programs, tpb and pb-notify, for interacting with\nthe Pushbullet API. The former is primarily used for sending SMS whereas the\nlatter is used for showing desktop notifications when SMS are received.\ntpb additionally supports a number of additional management commands for\ncreating and deleting resources inside PushBullet.\npb-notify is responsible for integration with PushBullet's Universal\nCopy/Paste feature. It maintains an internal buffer that is kept in sync with\nPushBullet's clipboard. This buffer can be accessed via pb-notify's built-in\nHTTP server. A POST request to the /clip endpoint of the server will in turn\nsend the necessary request to PushBullet to set the clipboard of all\nconnected devices.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tpb" = {
          depends = [
            (hsPkgs."pushbullet-types" or (buildDepError "pushbullet-types"))
            (hsPkgs."servant-pushbullet-client" or (buildDepError "servant-pushbullet-client"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."boxes" or (buildDepError "boxes"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            ];
          };
        "pb-notify" = {
          depends = [
            (hsPkgs."pushbullet-types" or (buildDepError "pushbullet-types"))
            (hsPkgs."servant-pushbullet-client" or (buildDepError "servant-pushbullet-client"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."libnotify" or (buildDepError "libnotify"))
            (hsPkgs."servant-client" or (buildDepError "servant-client"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wuss" or (buildDepError "wuss"))
            ];
          };
        };
      };
    }