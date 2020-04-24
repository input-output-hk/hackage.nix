{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "json-rpc-client"; version = "0.2.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Kristen Kozak <grayjay@wordroute.com>";
      author = "Kristen Kozak";
      homepage = "https://github.com/grayjay/json-rpc-client";
      url = "";
      synopsis = "JSON-RPC 2.0 on the client side.";
      description = "Functions for creating a JSON-RPC 2.0 client.  See\n<http://www.jsonrpc.org/specification>. This library supports\nbatch requests and notifications, as well as single method\ncalls.  It also provides a function for creating corresponding\nserver-side methods with the package\n<http://hackage.haskell.org/package/json-rpc-server json-rpc-server>.\nThis library does not handle transport, so a function for\ncommunicating with the server must be provided.\nThe demo folder contains an example client and server that can\nbe compiled with the demo flag.  See \"Network.JsonRpc.Client\"\nfor details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."json-rpc-server" or ((hsPkgs.pkgs-errors).buildDepError "json-rpc-server"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "vector-algorithms"))
          ];
        buildable = true;
        };
      exes = {
        "demo-server" = {
          depends = (pkgs.lib).optionals (flags.demo) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."json-rpc-client" or ((hsPkgs.pkgs-errors).buildDepError "json-rpc-client"))
            (hsPkgs."json-rpc-server" or ((hsPkgs.pkgs-errors).buildDepError "json-rpc-server"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if flags.demo then true else false;
          };
        "demo-client" = {
          depends = (pkgs.lib).optionals (flags.demo) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."json-rpc-client" or ((hsPkgs.pkgs-errors).buildDepError "json-rpc-client"))
            (hsPkgs."json-rpc-server" or ((hsPkgs.pkgs-errors).buildDepError "json-rpc-server"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if flags.demo then true else false;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."json-rpc-client" or ((hsPkgs.pkgs-errors).buildDepError "json-rpc-client"))
            (hsPkgs."json-rpc-server" or ((hsPkgs.pkgs-errors).buildDepError "json-rpc-server"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }