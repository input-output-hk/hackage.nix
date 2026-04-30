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
      specVersion = "3.12";
      identifier = { name = "acolyte-grpc"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Josh Burgess <joshburgess.webdev@gmail.com>";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/acolyte";
      url = "";
      synopsis = "gRPC interpretation for acolyte API types";
      description = "Interprets acolyte-core API types as gRPC services.\nThe same API type that drives REST routing, OpenAPI generation,\nand type-safe clients also drives gRPC serving.\n.\nProvides @ToProtoType@ for protobuf-compatible serialization,\n@GrpcReady@ for compile-time validation, @.proto@ file generation,\nand @mkGrpcServer@ to build a gRPC service from the API type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."acolyte-core" or (errorHandler.buildDepError "acolyte-core"))
          (hsPkgs."acolyte-server" or (errorHandler.buildDepError "acolyte-server"))
          (hsPkgs."spire" or (errorHandler.buildDepError "spire"))
          (hsPkgs."spire-grpc" or (errorHandler.buildDepError "spire-grpc"))
          (hsPkgs."spire-protobuf" or (errorHandler.buildDepError "spire-protobuf"))
          (hsPkgs."http-core" or (errorHandler.buildDepError "http-core"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."acolyte-grpc" or (errorHandler.buildDepError "acolyte-grpc"))
            (hsPkgs."acolyte-core" or (errorHandler.buildDepError "acolyte-core"))
            (hsPkgs."acolyte-server" or (errorHandler.buildDepError "acolyte-server"))
            (hsPkgs."spire" or (errorHandler.buildDepError "spire"))
            (hsPkgs."spire-grpc" or (errorHandler.buildDepError "spire-grpc"))
            (hsPkgs."http-core" or (errorHandler.buildDepError "http-core"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."acolyte-grpc" or (errorHandler.buildDepError "acolyte-grpc"))
            (hsPkgs."acolyte-core" or (errorHandler.buildDepError "acolyte-core"))
            (hsPkgs."acolyte-server" or (errorHandler.buildDepError "acolyte-server"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }