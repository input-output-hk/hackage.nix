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
    flags = { build-examples = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "mattermost-api"; version = "40800.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Jason Dagit, Getty Ritter, Jonathan Daugherty";
      maintainer = "dagitj@gmail.com";
      author = "Jason Dagit";
      homepage = "";
      url = "";
      synopsis = "Client API for Mattermost chat system";
      description = "Client API for Mattermost chat system";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."connection" or (buildDepError "connection"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."resource-pool" or (buildDepError "resource-pool"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."gitrev" or (buildDepError "gitrev"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          ];
        };
      exes = {
        "mm-get-teams" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mattermost-api" or (buildDepError "mattermost-api"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ];
          };
        "mm-get-channels" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mattermost-api" or (buildDepError "mattermost-api"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ];
          };
        "mm-get-posts" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mattermost-api" or (buildDepError "mattermost-api"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ];
          };
        "mm-make-post" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mattermost-api" or (buildDepError "mattermost-api"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ];
          };
        "mm-get-websocket-connection" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mattermost-api" or (buildDepError "mattermost-api"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ];
          };
        "mm-show-raw-events" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mattermost-api" or (buildDepError "mattermost-api"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ];
          };
        };
      tests = {
        "test-mm-api" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."mattermost-api" or (buildDepError "mattermost-api"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ];
          };
        };
      };
    }