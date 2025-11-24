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
      identifier = {
        name = "hs-opentelemetry-instrumentation-auto";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aaronallen8455@gmail.com";
      author = "Aaron Allen";
      homepage = "";
      url = "";
      synopsis = "Plugin for instrumenting an application";
      description = "A GHC plugin that auto-instruments an application for emitting open telementry tracing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."hs-opentelemetry-api" or (errorHandler.buildDepError "hs-opentelemetry-api"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."toml-parser" or (errorHandler.buildDepError "toml-parser"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "auto-instrument-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hs-opentelemetry-instrumentation-auto" or (errorHandler.buildDepError "hs-opentelemetry-instrumentation-auto"))
            (hsPkgs."hs-opentelemetry-api" or (errorHandler.buildDepError "hs-opentelemetry-api"))
            (hsPkgs."hs-opentelemetry-sdk" or (errorHandler.buildDepError "hs-opentelemetry-sdk"))
            (hsPkgs."hs-opentelemetry-exporter-in-memory" or (errorHandler.buildDepError "hs-opentelemetry-exporter-in-memory"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }