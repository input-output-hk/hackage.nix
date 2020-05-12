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
      identifier = { name = "warp-grpc"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/warp-grpc#readme";
      url = "";
      synopsis = "A minimal gRPC server on top of Warp.";
      description = "Please see the README on Github at <https://github.com/githubuser/warp-grpc#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
          ];
        buildable = true;
        };
      exes = {
        "warp-grpc-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
            (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
            (hsPkgs."proto-lens-protoc" or (errorHandler.buildDepError "proto-lens-protoc"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."warp-grpc" or (errorHandler.buildDepError "warp-grpc"))
            (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
            ];
          buildable = true;
          };
        };
      tests = {
        "warp-grpc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
            (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."warp-grpc" or (errorHandler.buildDepError "warp-grpc"))
            (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
            ];
          buildable = true;
          };
        };
      };
    }