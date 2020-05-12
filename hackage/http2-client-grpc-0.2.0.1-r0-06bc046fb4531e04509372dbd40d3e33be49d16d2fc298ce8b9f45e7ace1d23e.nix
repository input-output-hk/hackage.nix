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
      identifier = { name = "http2-client-grpc"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/http2-client-grpc#readme";
      url = "";
      synopsis = "Implement gRPC-over-HTTP2 clients.";
      description = "Uses http2-client and proto-lens to generate client code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
          (hsPkgs."http2-client" or (errorHandler.buildDepError "http2-client"))
          (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."proto-lens-protoc" or (errorHandler.buildDepError "proto-lens-protoc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      tests = {
        "http2-client-grpc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http2-client-grpc" or (errorHandler.buildDepError "http2-client-grpc"))
            ];
          buildable = true;
          };
        };
      };
    }