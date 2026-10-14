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
      identifier = { name = "hasql-opentelemetry"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Kronor";
      maintainer = "lorenzo@kronor.io";
      author = "Kronor";
      homepage = "https://github.com/kronor-io/hasql-opentelemetry";
      url = "";
      synopsis = "OpenTelemetry tracing for hasql";
      description = "Wraps the pqi adapter that hasql 2 connects through, so that every command\nsent to Postgres becomes an OpenTelemetry client span carrying the SQL,\nthe row count and, on failure, the SQLSTATE. Spans are timed from the send\nto the last result, including in pipeline mode. Parameter values and error\nmessages are never recorded.\n.\nSee \"Hasql.OpenTelemetry\" for usage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hs-opentelemetry-api" or (errorHandler.buildDepError "hs-opentelemetry-api"))
          (hsPkgs."pqi" or (errorHandler.buildDepError "pqi"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "hasql-opentelemetry-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasql" or (errorHandler.buildDepError "hasql"))
            (hsPkgs."hasql-opentelemetry" or (errorHandler.buildDepError "hasql-opentelemetry"))
            (hsPkgs."hs-opentelemetry-api" or (errorHandler.buildDepError "hs-opentelemetry-api"))
            (hsPkgs."hs-opentelemetry-exporter-in-memory" or (errorHandler.buildDepError "hs-opentelemetry-exporter-in-memory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."pqi" or (errorHandler.buildDepError "pqi"))
            (hsPkgs."pqi-ffi" or (errorHandler.buildDepError "pqi-ffi"))
            (hsPkgs."pqi-native" or (errorHandler.buildDepError "pqi-native"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }