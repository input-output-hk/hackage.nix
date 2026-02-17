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
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "jsonrpc"; version = "0.2.0.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2026 DPella AB";
      maintainer = "matti@dpella.io,\nlobo@dpella.io";
      author = "DPella AB";
      homepage = "https://github.com/DPella/jsonrpc";
      url = "";
      synopsis = "JSON-RPC 2.0 types and type classes for Haskell";
      description = "A lightweight implementation of the JSON-RPC 2.0 protocol types for Haskell\nwith Aeson serialisation.  Provides the core request, response, notification,\nand error types along with type classes for deriving JSON-RPC method dispatch\nvia @DerivingVia@.\n\nImplements the specification at <https://www.jsonrpc.org/specification>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test-jsonrpc" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."jsonrpc" or (errorHandler.buildDepError "jsonrpc"))
          ];
          buildable = true;
        };
      };
    };
  }