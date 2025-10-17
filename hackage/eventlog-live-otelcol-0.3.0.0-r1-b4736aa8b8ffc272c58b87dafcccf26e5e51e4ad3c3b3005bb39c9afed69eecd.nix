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
      identifier = { name = "eventlog-live-otelcol"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Well-Typed";
      maintainer = "wen@well-typed.com";
      author = "Wen Kokke";
      homepage = "";
      url = "";
      synopsis = "Stream eventlog data to the OpenTelemetry Collector.";
      description = "This executable supports live streaming of eventlog data into\nthe OpenTelemetry Collector.\n\n> Usage: eventlog-live-otelcol (--eventlog-stdin | --eventlog-file FILE |\n>                                --eventlog-socket SOCKET)\n>                              [--eventlog-socket-timeout NUM]\n>                              [--eventlog-socket-exponent NUM]\n>                              [--batch-interval NUM] [--eventlog-log-file FILE]\n>                              [-h Tcmdyrbi] [--service-name STRING]\n>                              [-v|--verbosity quiet|error|warning|info|debug|0-4]\n>                              [--config FILE] --otelcol-host HOST\n>                              [--otelcol-port PORT] [--otelcol-authority HOST]\n>                              [--otelcol-ssl] [--otelcol-certificate-store FILE]\n>                              [--otelcol-ssl-key-log FILE |\n>                                --otelcol-ssl-key-log-from-env]\n>                              [--print-defaults]\n>\n> Available options:\n>   --eventlog-stdin         Read the eventlog from stdin.\n>   --eventlog-file FILE     Read the eventlog from a file.\n>   --eventlog-socket SOCKET Read the eventlog from a Unix socket.\n>   --eventlog-socket-timeout NUM\n>                            Eventlog socket connection retry timeout in\n>                            microseconds.\n>   --eventlog-socket-exponent NUM\n>                            Eventlog socket connection retry timeout exponent.\n>   --batch-interval NUM     Batch interval in milliseconds.\n>   --eventlog-log-file FILE Use file to log binary eventlog data.\n>   -h Tcmdyrbi              Heap profile breakdown.\n>   --service-name STRING    The name of the profiled service.\n>   -v,--verbosity quiet|error|warning|info|debug|0-4\n>                            The verbosity threshold for logging.\n>   --config FILE            The path to a detailed configuration file.\n>   --print-defaults         Print default configuration options that can be used\n>                            in config.yaml\n>   --help                   Show this help text.\n>   --version                Show version information\n>\n> OpenTelemetry Collector Server Options\n>   --otelcol-host HOST      Server hostname.\n>   --otelcol-port PORT      Server TCP port.\n>   --otelcol-authority HOST Server authority.\n>   --otelcol-ssl            Use SSL.\n>   --otelcol-certificate-store FILE\n>                            Store for certificate validation.\n>   --otelcol-ssl-key-log FILE\n>                            Use file to log SSL keys.\n>   --otelcol-ssl-key-log-from-env\n>                            Use SSLKEYLOGFILE to log SSL keys.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."eventlog-live" or (errorHandler.buildDepError "eventlog-live"))
          (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
          (hsPkgs."grapesy" or (errorHandler.buildDepError "grapesy"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hs-opentelemetry-otlp" or (errorHandler.buildDepError "hs-opentelemetry-otlp"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
      exes = {
        "eventlog-live-otelcol" = {
          depends = [
            (hsPkgs."eventlog-live-otelcol" or (errorHandler.buildDepError "eventlog-live-otelcol"))
          ];
          buildable = true;
        };
      };
    };
  }