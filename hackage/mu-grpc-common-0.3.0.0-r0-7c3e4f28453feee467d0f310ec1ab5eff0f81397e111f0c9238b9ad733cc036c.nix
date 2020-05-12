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
      identifier = { name = "mu-grpc-common"; version = "0.3.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright © 2019-2020 <http://47deg.com 47 Degrees>";
      maintainer = "alejandro.serrano@47deg.com";
      author = "Alejandro Serrano, Flavio Corpa";
      homepage = "https://higherkindness.io/mu-haskell/";
      url = "";
      synopsis = "gRPC for Mu, common modules for client and server";
      description = "Use @mu-grpc-server@ or @mu-grpc-client@ (the common parts).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."avro" or (errorHandler.buildDepError "avro"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http2-grpc-proto3-wire" or (errorHandler.buildDepError "http2-grpc-proto3-wire"))
          (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
          (hsPkgs."mu-avro" or (errorHandler.buildDepError "mu-avro"))
          (hsPkgs."mu-protobuf" or (errorHandler.buildDepError "mu-protobuf"))
          (hsPkgs."mu-rpc" or (errorHandler.buildDepError "mu-rpc"))
          (hsPkgs."mu-schema" or (errorHandler.buildDepError "mu-schema"))
          ];
        buildable = true;
        };
      };
    }