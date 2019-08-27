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
      identifier = { name = "slack-api"; version = "0.11"; };
      license = "MIT";
      copyright = "";
      maintainer = "matthewtpickering@gmail.com";
      author = "Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "Bindings to the Slack RTM API.";
      description = "This library provides bindings to the <https://api.slack.com/rtm Slack Real Time Messaging API>.\nUsers should find it easy to program their own Slack bots using the functionality found in `Web.Slack`.\nThe bindings are very nearly complete. Library authors\nlooking to build bindings to the <https://api.slack.com/web Slack Web API> may\nfind the `FromJSON` instances located in `Web.Slack.Types`\nuseful.\nPlease note that the interface provided by this package is not yet stable. There are a number of unresolved\ninternal inconsistencies which have yet to be resolved by Slack HQ.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."time-locale-compat" or (buildDepError "time-locale-compat"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          (hsPkgs."wuss" or (buildDepError "wuss"))
          ];
        };
      exes = {
        "example_echobot" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."slack-api" or (buildDepError "slack-api"))
            ];
          };
        "example_counterbot" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."slack-api" or (buildDepError "slack-api"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."lens" or (buildDepError "lens"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."slack-api" or (buildDepError "slack-api"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }