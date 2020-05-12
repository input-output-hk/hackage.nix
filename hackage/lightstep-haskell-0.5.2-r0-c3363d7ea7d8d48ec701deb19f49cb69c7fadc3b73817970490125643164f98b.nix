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
    flags = { examples = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "lightstep-haskell"; version = "0.5.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Dmitry Ivanov <ethercrow@gmail.com>";
      author = "";
      homepage = "https://github.com/ethercrow/lightstep-haskell#readme";
      url = "";
      synopsis = "LightStep OpenTracing client library";
      description = "LightStep OpenTracing client library. Uses GRPC transport via proto-lens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http2-client" or (errorHandler.buildDepError "http2-client"))
          (hsPkgs."http2-client-grpc" or (errorHandler.buildDepError "http2-client-grpc"))
          (hsPkgs."http2-grpc-proto-lens" or (errorHandler.buildDepError "http2-grpc-proto-lens"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."proto-lens-protobuf-types" or (errorHandler.buildDepError "proto-lens-protobuf-types"))
          (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
        buildable = true;
        };
      exes = {
        "lightstep-haskell-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."http2-client" or (errorHandler.buildDepError "http2-client"))
            (hsPkgs."lightstep-haskell" or (errorHandler.buildDepError "lightstep-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lightstep-haskell-wai-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lightstep-haskell" or (errorHandler.buildDepError "lightstep-haskell"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lightstep-haskell-req-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lightstep-haskell" or (errorHandler.buildDepError "lightstep-haskell"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."req" or (errorHandler.buildDepError "req"))
            ];
          buildable = if flags.examples then true else false;
          };
        "lightstep-haskell-stress-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lightstep-haskell" or (errorHandler.buildDepError "lightstep-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        };
      };
    }