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
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "json-rpc-client"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Kristen Kozak <grayjay@wordroute.com>";
      author = "Kristen Kozak";
      homepage = "";
      url = "";
      synopsis = "JSON-RPC 2.0 on the client side.";
      description = "Functions for creating a JSON-RPC 2.0 client.  See\n<http://www.jsonrpc.org/specification>. This library supports\nbatch requests and notifications, as well as single method\ncalls.  It also provides a function for creating corresponding\nserver-side methods with the package\n<http://hackage.haskell.org/package/json-rpc-server json-rpc-server>.\nThis library does not handle transport, so a function for\ncommunicating with the server must be provided.\nThe demo folder contains an example client and server that can\nbe compiled with the demo flag.  See \"Network.JsonRpc.Client\"\nfor details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."json-rpc-server" or (buildDepError "json-rpc-server"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
          ];
        };
      exes = {
        "demo-server" = {
          depends = (pkgs.lib).optionals (flags.demo) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."json-rpc-client" or (buildDepError "json-rpc-client"))
            (hsPkgs."json-rpc-server" or (buildDepError "json-rpc-server"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "demo-client" = {
          depends = (pkgs.lib).optionals (flags.demo) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."json-rpc-client" or (buildDepError "json-rpc-client"))
            (hsPkgs."json-rpc-server" or (buildDepError "json-rpc-server"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."json-rpc-client" or (buildDepError "json-rpc-client"))
            (hsPkgs."json-rpc-server" or (buildDepError "json-rpc-server"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ];
          };
        };
      };
    }