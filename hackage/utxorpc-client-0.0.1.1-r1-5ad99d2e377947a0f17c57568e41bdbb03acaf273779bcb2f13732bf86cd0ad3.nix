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
      specVersion = "3.0";
      identifier = { name = "utxorpc-client"; version = "0.0.1.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Dominic Mayhew <dominic.j.mayhew@gmail.com>\nTxPipe <registrant@txpipe.io>";
      author = "Dominic Mayhew";
      homepage = "https://github.com/utxorpc/utxorpc-client#readme";
      url = "";
      synopsis = "An SDK for clients of the UTxO RPC specification.";
      description = "An SDK to reduce boilerplate, improve ease-of-use, and support logging for `utxorpc`.\nTo get started, see the documentation for `Utxorpc.Client` below.\nConsult the README for help with dependency configurations.\n\nWARNING: This package is currently pre-release. Any version < 0.1.0.0 is subject to breaking\nchanges without change in major version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http2-client" or (errorHandler.buildDepError "http2-client"))
          (hsPkgs."http2-client-grpc" or (errorHandler.buildDepError "http2-client-grpc"))
          (hsPkgs."http2-grpc-proto-lens" or (errorHandler.buildDepError "http2-grpc-proto-lens"))
          (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."utxorpc" or (errorHandler.buildDepError "utxorpc"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      exes = {
        "client-example" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."katip" or (errorHandler.buildDepError "katip"))
            (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
            (hsPkgs."http2-client" or (errorHandler.buildDepError "http2-client"))
            (hsPkgs."http2-client-grpc" or (errorHandler.buildDepError "http2-client-grpc"))
            (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."utxorpc-client" or (errorHandler.buildDepError "utxorpc-client"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            ];
          buildable = true;
          };
        "client-quick-start" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."utxorpc" or (errorHandler.buildDepError "utxorpc"))
            (hsPkgs."utxorpc-client" or (errorHandler.buildDepError "utxorpc-client"))
            ];
          buildable = true;
          };
        };
      tests = {
        "logged_test_client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http2-client" or (errorHandler.buildDepError "http2-client"))
            (hsPkgs."http2-client-grpc" or (errorHandler.buildDepError "http2-client-grpc"))
            (hsPkgs."http2-grpc-proto-lens" or (errorHandler.buildDepError "http2-grpc-proto-lens"))
            (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
            (hsPkgs."utxorpc" or (errorHandler.buildDepError "utxorpc"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            ];
          buildable = true;
          };
        };
      };
    }