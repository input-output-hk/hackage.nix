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
      specVersion = "1.8";
      identifier = { name = "json-rpc-server"; version = "0.2.6.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Kristen Kozak <grayjay@wordroute.com>";
      author = "";
      homepage = "https://github.com/grayjay/json-rpc-server";
      url = "";
      synopsis = "JSON-RPC 2.0 on the server side.";
      description = "An implementation of the server side of JSON-RPC 2.0.\nSee <http://www.jsonrpc.org/specification>. This\nlibrary uses 'ByteString' for input and output,\nleaving the choice of transport up to the user.\nSee the \"Network.JsonRpc.Server\" module for an example.\njson-rpc-server can be used with\n<http://hackage.haskell.org/package/json-rpc-client json-rpc-client>\nto create a client and server that communicate\nwith the same methods.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "demo" = {
          depends = (pkgs.lib).optionals (flags.demo) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."json-rpc-server" or (errorHandler.buildDepError "json-rpc-server"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = if flags.demo then true else false;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."json-rpc-server" or (errorHandler.buildDepError "json-rpc-server"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }