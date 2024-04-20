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
      specVersion = "1.12";
      identifier = { name = "http2-grpc-proto-lens"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018, 2019 Lucas DiCioccio, Alejandro Serrano";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio, Alejandro Serrano";
      homepage = "https://github.com/haskell-grpc-native/http2-grpc-haskell#readme";
      url = "";
      synopsis = "Encoders based on `proto-lens` for gRPC over HTTP2.";
      description = "Please see the README on GitHub at <https://github.com/haskell-grpc-native/http2-grpc-haskell/blob/master/http2-grpc-proto-lens/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      };
    }