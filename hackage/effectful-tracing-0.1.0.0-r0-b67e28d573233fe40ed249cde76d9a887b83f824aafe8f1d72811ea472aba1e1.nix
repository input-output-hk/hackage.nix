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
    flags = {
      otel = false;
      wai = false;
      http-client = false;
      postgresql-simple = false;
      sqlite-simple = false;
      valiant = false;
      amqp = false;
      servant = false;
      secure-ids = false;
    };
    package = {
      specVersion = "3.0";
      identifier = { name = "effectful-tracing"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) The effectful-tracing contributors";
      maintainer = "joshualoganburgess@gmail.com";
      author = "The effectful-tracing contributors";
      homepage = "https://github.com/joshburgess/effectful-tracing";
      url = "";
      synopsis = "Tracing as a scoped effect, built on effectful, with OpenTelemetry interop.";
      description = "A Haskell tracing library built natively on the @effectful@ effect system.\nSpans are modeled as scoped, higher-order effects, so the current span is\nlexical rather than thread-local. Real export is provided by an\nOpenTelemetry interpreter that compiles down to @hs-opentelemetry@; other\ninterpreters (no-op, in-memory, pretty-print) cover testing and development.\n.\nThis is an early release: the API is experimental and may change between\nversions. See the README and the @docs@ directory for a tutorial, cookbook,\nand design overview.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (((((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optionals (flags.otel) [
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."hs-opentelemetry-api" or (errorHandler.buildDepError "hs-opentelemetry-api"))
        ]) ++ pkgs.lib.optional (flags.wai || flags.servant) (hsPkgs."wai" or (errorHandler.buildDepError "wai"))) ++ pkgs.lib.optionals (flags.servant) [
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
        ]) ++ pkgs.lib.optional (flags.http-client) (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))) ++ pkgs.lib.optional (flags.postgresql-simple) (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))) ++ pkgs.lib.optional (flags.sqlite-simple) (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))) ++ pkgs.lib.optionals (flags.valiant) [
          (hsPkgs."valiant" or (errorHandler.buildDepError "valiant"))
          (hsPkgs."valiant-effectful" or (errorHandler.buildDepError "valiant-effectful"))
        ]) ++ pkgs.lib.optional (flags.amqp) (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))) ++ pkgs.lib.optional (flags.secure-ids) (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"));
        buildable = true;
      };
      tests = {
        "effectful-tracing-test" = {
          depends = ((((((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."effectful-tracing" or (errorHandler.buildDepError "effectful-tracing"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."nothunks" or (errorHandler.buildDepError "nothunks"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ pkgs.lib.optionals (flags.otel) [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."hs-opentelemetry-api" or (errorHandler.buildDepError "hs-opentelemetry-api"))
          ]) ++ pkgs.lib.optional (flags.wai || flags.servant) (hsPkgs."wai" or (errorHandler.buildDepError "wai"))) ++ pkgs.lib.optionals (flags.servant) [
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          ]) ++ pkgs.lib.optionals (flags.http-client) [
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ]) ++ pkgs.lib.optional (flags.postgresql-simple) (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))) ++ pkgs.lib.optional (flags.sqlite-simple) (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))) ++ pkgs.lib.optionals (flags.valiant) [
            (hsPkgs."valiant" or (errorHandler.buildDepError "valiant"))
            (hsPkgs."valiant-effectful" or (errorHandler.buildDepError "valiant-effectful"))
          ]) ++ pkgs.lib.optional (flags.amqp) (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"));
          buildable = true;
        };
        "effectful-tracing-space-leak" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."effectful-tracing" or (errorHandler.buildDepError "effectful-tracing"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "effectful-tracing-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."effectful-tracing" or (errorHandler.buildDepError "effectful-tracing"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }