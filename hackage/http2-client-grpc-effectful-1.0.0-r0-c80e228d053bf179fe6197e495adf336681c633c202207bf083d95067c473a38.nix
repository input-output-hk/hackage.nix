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
      identifier = { name = "http2-client-grpc-effectful"; version = "1.0.0"; };
      license = "EUPL-1.2";
      copyright = "";
      maintainer = "IDA";
      author = "IDA";
      homepage = "https://digital-autonomy.institute";
      url = "";
      synopsis = "Effectful gRPC client built on http2-client-effectful";
      description = "<https://grpc.io gRPC> client for the @<https://hackage.haskell.org/package/effectful Effectful>@ ecosystem, built on top of @<https://hackage.haskell.org/package/http2-client-effectful http2-client-effectful>@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
          (hsPkgs."http2-client-effectful" or (errorHandler.buildDepError "http2-client-effectful"))
          (hsPkgs."http2-grpc-types" or (errorHandler.buildDepError "http2-grpc-types"))
        ];
        buildable = true;
      };
    };
  }