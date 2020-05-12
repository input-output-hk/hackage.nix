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
      specVersion = "1.10";
      identifier = { name = "mu-protobuf"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright © 2019-2020 <http://47deg.com 47 Degrees>";
      maintainer = "alejandro.serrano@47deg.com";
      author = "Alejandro Serrano, Flavio Corpa";
      homepage = "https://higherkindness.io/mu-haskell/";
      url = "";
      synopsis = "Protocol Buffers serialization and gRPC schema import for Mu microservices";
      description = "You can use @mu-protobuf@ to read Protobuf Schema Declarations and services for mu-haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mu-schema" or (errorHandler.buildDepError "mu-schema"))
          (hsPkgs."mu-rpc" or (errorHandler.buildDepError "mu-rpc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          (hsPkgs."proto3-wire" or (errorHandler.buildDepError "proto3-wire"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."language-protobuf" or (errorHandler.buildDepError "language-protobuf"))
          (hsPkgs."compendium-client" or (errorHandler.buildDepError "compendium-client"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
          (hsPkgs."http2-grpc-proto3-wire" or (errorHandler.buildDepError "http2-grpc-proto3-wire"))
          ];
        buildable = true;
        };
      exes = {
        "test-protobuf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mu-schema" or (errorHandler.buildDepError "mu-schema"))
            (hsPkgs."mu-protobuf" or (errorHandler.buildDepError "mu-protobuf"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."proto3-wire" or (errorHandler.buildDepError "proto3-wire"))
            ];
          buildable = true;
          };
        };
      };
    }