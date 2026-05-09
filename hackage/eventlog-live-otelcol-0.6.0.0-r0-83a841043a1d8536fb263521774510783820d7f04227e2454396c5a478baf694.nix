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
      control = false;
      use-eventlog-socket = false;
      use-ghc-debug-stub = false;
      use-template-haskell-lift = false;
    };
    package = {
      specVersion = "3.0";
      identifier = { name = "eventlog-live-otelcol"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Well-Typed";
      maintainer = "wen@well-typed.com";
      author = "Wen Kokke";
      homepage = "";
      url = "";
      synopsis = "Stream eventlog data to the OpenTelemetry Collector.";
      description = "This executable supports live streaming of eventlog data into the OpenTelemetry Collector.\n\n> Usage: eventlog-live-otelcol (--eventlog-stdin | --eventlog-file FILE | --eventlog-socket SOCKET)\n>                              [--eventlog-socket-timeout SECONDS]\n>                              [--eventlog-socket-exponent NUMBER]\n>                              [--eventlog-flush-interval SECONDS]\n>                              [--eventlog-log-file FILE]\n>                              [-h Tcmdyrbi]\n>                              [--service-name STRING]\n>                              [-v|--verbosity fatal|error|warning|info|debug|trace]\n>                              [-s|--stats]\n>                              [--config FILE]\n>                              --otelcol-host HOST\n>                              [--otelcol-port PORT]\n>                              [--otelcol-authority HOST]\n>                              [--otelcol-ssl]\n>                              [--otelcol-certificate-store FILE]\n>                              [--otelcol-ssl-key-log FILE | --otelcol-ssl-key-log-from-env]\n>                              [--control]\n>                              [--control-port PORT]\n>                              [--control-cors-allow-origin ORIGIN]\n>                              [--control-cors-max-age SECONDS]\n>                              [--control-cors-require-origin]\n>                              [--control-cors-ignore-failure]\n>                              [--my-eventlog-socket-unix FILE]\n>                              [--my-ghc-debug-socket | --my-ghc-debug-socket-unix FILE | --my-ghc-debug-socket-tcp ADDRESS]\n>                              [--print-defaults]\n>                              [--print-config-json-schema]\n>\n> Available options:\n>   --eventlog-stdin                   Read the eventlog from stdin.\n>   --eventlog-file FILE               Read the eventlog from a file.\n>   --eventlog-socket SOCKET           Read the eventlog from a Unix socket.\n>   --eventlog-socket-timeout SECONDS  Eventlog socket connection retry timeout in seconds.\n>   --eventlog-socket-exponent NUMBER  Eventlog socket connection retry timeout exponent.\n>   --eventlog-flush-interval SECONDS  Eventlog flush interval in seconds.\n>                                      Should match the option passed to the application.\n>   --eventlog-log-file FILE           Use file to log binary eventlog data.\n>   -h Tcmdyrbi                        Heap profile breakdown.\n>                                      Should match the option passed to the application.\n>   --service-name STRING              The name of the profiled service.\n>   -v,--verbosity fatal|error|warning|info|debug|trace\n>                                      The severity threshold for logging.\n>   -s,--stats                         Display runtime statistics.\n>   --config FILE                      The path to a detailed configuration file.\n>   --print-defaults                   Print default configuration options.\n>   --print-config-json-schema         Print JSON Schema for configuration format.\n>   --help                             Show this help text.\n>   --version                          Show version information\n>\n> OpenTelemetry Collector Server Options\n>   --otelcol-host HOST                Otelcol server hostname.\n>   --otelcol-port PORT                Otelcol server TCP port.\n>   --otelcol-authority HOST           Otelcol server authority.\n>   --otelcol-ssl                      Use SSL.\n>   --otelcol-certificate-store FILE   Store for certificate validation.\n>   --otelcol-ssl-key-log FILE         Use file to log SSL keys.\n>   --otelcol-ssl-key-log-from-env     Use SSLKEYLOGFILE to log SSL keys.\n>\n> Control Server Options\n>   --control                          Start the control server.\n>   --control-port PORT                The port number for the control server.\n>   --control-cors-allow-origin ORIGIN Set the allowed origins for the control server CORS policy.\n>   --control-cors-max-age SECONDS     Set the maximum age of a cached CORS preflight request for the control server CORS policy.\n>   --control-cors-require-origin      If enabled, the control server will not accept requests without an Origin header.\n>   --control-cors-ignore-failure      If enabled, the control server will accept malformed CORS preflight requests.\n>\n> Debug Options\n>   --my-eventlog-socket-unix FILE     Open an eventlog socket for this program on the given Unix socket.\n>   --my-ghc-debug-socket              Open the default ghc-debug socket for this program.\n>   --my-ghc-debug-socket-unix FILE    Open a ghc-debug Unix domain socket with the given file path.\n>   --my-ghc-debug-socket-tcp ADDRESS  Open a ghc-debug TCP/IP socket with the given address as 'host:port'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."eventlog-live" or (errorHandler.buildDepError "eventlog-live"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
          (hsPkgs."ghc-stack-profiler-core" or (errorHandler.buildDepError "ghc-stack-profiler-core"))
          (hsPkgs."grapesy" or (errorHandler.buildDepError "grapesy"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hs-opentelemetry-otlp" or (errorHandler.buildDepError "hs-opentelemetry-otlp"))
          (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."strict-list" or (errorHandler.buildDepError "strict-list"))
          (hsPkgs."table-layout" or (errorHandler.buildDepError "table-layout"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optionals (flags.control) [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."eventlog-socket-control" or (errorHandler.buildDepError "eventlog-socket-control"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-cors" or (errorHandler.buildDepError "wai-cors"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
        ]) ++ pkgs.lib.optional (flags.use-eventlog-socket) (hsPkgs."eventlog-socket" or (errorHandler.buildDepError "eventlog-socket"))) ++ pkgs.lib.optional (flags.use-ghc-debug-stub) (hsPkgs."ghc-debug-stub" or (errorHandler.buildDepError "ghc-debug-stub"))) ++ (if flags.use-template-haskell-lift
          then [
            (hsPkgs."template-haskell-lift" or (errorHandler.buildDepError "template-haskell-lift"))
          ]
          else [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ]);
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