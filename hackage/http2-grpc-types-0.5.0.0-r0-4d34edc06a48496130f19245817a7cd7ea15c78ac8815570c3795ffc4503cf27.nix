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
      identifier = { name = "http2-grpc-types"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018, 2019 Lucas DiCioccio, Alejandro Serrano";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio, Alejandro Serrano";
      homepage = "https://github.com/haskell-grpc-native/http2-grpc-haskell#readme";
      url = "";
      synopsis = "Types for gRPC over HTTP2 common for client and servers.";
      description = "Please see the README on GitHub at <https://github.com/haskell-grpc-native/http2-grpc-haskell/blob/master/http2-grpc-types/README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ];
        buildable = true;
      };
    };
  }