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
      identifier = { name = "spire-grpc"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Josh Burgess <joshburgess.webdev@gmail.com>";
      author = "Josh Burgess";
      homepage = "https://github.com/joshburgess/acolyte";
      url = "";
      synopsis = "gRPC wire protocol for spire services";
      description = "gRPC framing, status codes, and request/response handling built on\nspire + http-core. Provides the wire protocol layer: service/method\ndispatch, length-prefixed message framing, trailers-based status.\n.\nNo protobuf dependency: serialization is pluggable. Use with\nproto-lens, binary, aeson, or any codec.\n.\nNo WAI dependency: runs on spire-server's HTTP/2 transport.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."spire" or (errorHandler.buildDepError "spire"))
          (hsPkgs."http-core" or (errorHandler.buildDepError "http-core"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."spire-grpc" or (errorHandler.buildDepError "spire-grpc"))
            (hsPkgs."spire" or (errorHandler.buildDepError "spire"))
            (hsPkgs."http-core" or (errorHandler.buildDepError "http-core"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ];
          buildable = true;
        };
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."spire-grpc" or (errorHandler.buildDepError "spire-grpc"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "integration" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."spire-grpc" or (errorHandler.buildDepError "spire-grpc"))
            (hsPkgs."spire" or (errorHandler.buildDepError "spire"))
            (hsPkgs."http-core" or (errorHandler.buildDepError "http-core"))
            (hsPkgs."spire-server" or (errorHandler.buildDepError "spire-server"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          ];
          buildable = true;
        };
      };
    };
  }