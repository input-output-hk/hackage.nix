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
      identifier = { name = "wai-otel-effectful"; version = "1.0.0"; };
      license = "EUPL-1.2";
      copyright = "";
      maintainer = "IDA";
      author = "IDA";
      homepage = "https://digital-autonomy.institute";
      url = "";
      synopsis = "OpenTelemetry-instrumented WAI middleware for the Effectful ecosystem";
      description = "Instrumented @<https://hackage.haskell.org/package/wai wai>@ middleware that\nextracts and injects OpenTelemetry tracing context on requests, in the style\nof @<https://hackage.haskell.org/package/hs-opentelemetry-instrumentation-wai hs-opentelemetry-instrumentation-wai>@,\nbuilt on top of @<https://hackage.haskell.org/package/wai-effectful wai-effectful>@\nand @otel-effectful@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."otel-effectful" or (errorHandler.buildDepError "otel-effectful"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai-effectful" or (errorHandler.buildDepError "wai-effectful"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."hspec-effectful" or (errorHandler.buildDepError "hspec-effectful"))
            (hsPkgs."http-client-effectful" or (errorHandler.buildDepError "http-client-effectful"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."otel-effectful" or (errorHandler.buildDepError "otel-effectful"))
            (hsPkgs."wai-effectful" or (errorHandler.buildDepError "wai-effectful"))
            (hsPkgs."wai-otel-effectful" or (errorHandler.buildDepError "wai-otel-effectful"))
            (hsPkgs."warp-effectful" or (errorHandler.buildDepError "warp-effectful"))
          ];
          buildable = true;
        };
      };
    };
  }