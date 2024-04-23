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
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "json-rpc-client"; version = "0.1.0.0"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."json-rpc-server" or (errorHandler.buildDepError "json-rpc-server"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "demo-server" = {
          depends = pkgs.lib.optionals (flags.demo) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."json-rpc-client" or (errorHandler.buildDepError "json-rpc-client"))
            (hsPkgs."json-rpc-server" or (errorHandler.buildDepError "json-rpc-server"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if flags.demo then true else false;
        };
        "demo-client" = {
          depends = pkgs.lib.optionals (flags.demo) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."json-rpc-client" or (errorHandler.buildDepError "json-rpc-client"))
            (hsPkgs."json-rpc-server" or (errorHandler.buildDepError "json-rpc-server"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if flags.demo then true else false;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."json-rpc-client" or (errorHandler.buildDepError "json-rpc-client"))
            (hsPkgs."json-rpc-server" or (errorHandler.buildDepError "json-rpc-server"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }