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
      specVersion = "2.4";
      identifier = {
        name = "hs-opentelemetry-instrumentation-ghc-metrics";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2024-2026 Ian Duncan, Mercury Technologies";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/hs-opentelemetry#readme";
      url = "";
      synopsis = "OpenTelemetry metrics for the GHC runtime (RTS statistics)";
      description = "Registers observable instruments that report GHC RTS statistics as OpenTelemetry\nmetrics.  Requires the program to be run with @+RTS -T@ (or @-t@, @-s@, etc.)\nso that 'GHC.Stats.getRTSStats' is enabled.\n\nMetric names follow the @process.runtime.ghc.*@ namespace convention.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hs-opentelemetry-api" or (errorHandler.buildDepError "hs-opentelemetry-api"))
          (hsPkgs."hs-opentelemetry-semantic-conventions" or (errorHandler.buildDepError "hs-opentelemetry-semantic-conventions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ] ++ pkgs.lib.optionals (system.isLinux) [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"));
        buildable = true;
      };
      tests = {
        "hs-opentelemetry-instrumentation-ghc-metrics-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs-opentelemetry-api" or (errorHandler.buildDepError "hs-opentelemetry-api"))
            (hsPkgs."hs-opentelemetry-exporter-in-memory" or (errorHandler.buildDepError "hs-opentelemetry-exporter-in-memory"))
            (hsPkgs."hs-opentelemetry-instrumentation-ghc-metrics" or (errorHandler.buildDepError "hs-opentelemetry-instrumentation-ghc-metrics"))
            (hsPkgs."hs-opentelemetry-sdk" or (errorHandler.buildDepError "hs-opentelemetry-sdk"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }