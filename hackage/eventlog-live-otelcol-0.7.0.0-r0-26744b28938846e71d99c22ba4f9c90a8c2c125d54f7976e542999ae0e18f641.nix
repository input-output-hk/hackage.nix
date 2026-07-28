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
      identifier = { name = "eventlog-live-otelcol"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Well-Typed";
      maintainer = "wen@well-typed.com";
      author = "Wen Kokke";
      homepage = "";
      url = "";
      synopsis = "Stream eventlog data to the OpenTelemetry Collector.";
      description = "This executable collects telemetry data from any Haskell application\nand sends it over the OpenTelemetry protocol. The next release of this\nexecutable will be as part of the\n[@eventlog-live@ package](https://hackage.haskell.org/package/eventlog-live)\nunder the name @eventlog-live-otlp@.\n\nFor more information, see [the README](https://github.com/well-typed/eventlog-live#readme).\n\n> Usage: eventlog-live-otelcol (--eventlog-stdin | --eventlog-file FILE |\n>                                --eventlog-socket SOCKET |\n>                                --eventlog-socket-host HOST\n>                                --eventlog-socket-port PORT)\n>                              [--eventlog-socket-timeout SECONDS]\n>                              [--eventlog-socket-exponent NUMBER]\n>                              [--eventlog-flush-interval SECONDS]\n>                              [--eventlog-log-file FILE] [-h Tcmdyrbi]\n>                              [--service-name STRING] [--ipedb FILE]\n>                              [--ccdb FILE]\n>                              [-v|--verbosity fatal|error|warning|info|debug|trace]\n>                              [-s|--stats] [--config FILE] [--otlp-protocol ARG]\n>                              --otlp-endpoint ARG\n>                              [--otlp-grpc-certificate-store FILE]\n>                              [--otlp-grpc-ssl-key-log FILE |\n>                                --otlp-grpc-ssl-key-log-from-env]\n>                              [--otlp-http-headers ARG] [--print-defaults]\n>                              [--print-config-json-schema]\n>\n> Available options:\n>   --eventlog-stdin         Read the eventlog from stdin.\n>   --eventlog-file FILE     Read the eventlog from a file.\n>   --eventlog-socket SOCKET Read the eventlog from a Unix socket.\n>   --eventlog-socket-host HOST\n>                            Read the eventlog from a TCP/IP socket.\n>   --eventlog-socket-port PORT\n>                            Read the eventlog from a TCP/IP socket.\n>   --eventlog-socket-timeout SECONDS\n>                            Eventlog socket connection retry timeout in seconds.\n>   --eventlog-socket-exponent NUMBER\n>                            Eventlog socket connection retry timeout exponent.\n>   --eventlog-flush-interval SECONDS\n>                            Eventlog flush interval in seconds.\n>                            Should match the option passed to the application.\n>   --eventlog-log-file FILE Use file to log binary eventlog data.\n>   -h Tcmdyrbi              Heap profile breakdown.\n>                            Should match the option passed to the application.\n>   --service-name STRING    The name of the profiled service.\n>   --ipedb FILE             The path to an IPE database.\n>   --ccdb FILE              The path a cost-centre database.\n>   -v,--verbosity fatal|error|warning|info|debug|trace\n>                            The severity threshold for logging.\n>   -s,--stats               Display runtime statistics.\n>   --config FILE            The path to a detailed configuration file.\n>   --print-defaults         Print default configuration options.\n>   --print-config-json-schema\n>                            Print JSON Schema for configuration format.\n>   --help                   Show this help text.\n>   --version                Show version information\n>\n> OTLP Exporter Options\n>   --otlp-protocol ARG      The OTLP transport protocol to be used for all telemetry data (gRPC, HTTP/Protobuf).\n>                            Default value: gRPC\n>   --otlp-endpoint ARG      The OTLP endpoint URL for all telemetry data, with an optionally-specified port number.\n>                            Default value:\n>                              gRPC: http://localhost:4317\n>                              HTTP: http://localhost:4318\n>                            Example:\n>                              gRPC: https://my-api-endpoint:443\n>                              HTTP: http://my-api-endpoint/\n>   --otlp-grpc-certificate-store FILE\n>                            Store for certificate validation.\n>   --otlp-grpc-ssl-key-log FILE\n>                            Use file to log SSL keys.\n>   --otlp-grpc-ssl-key-log-from-env\n>                            Use SSLKEYLOGFILE to log SSL keys.\n>   --otlp-http-headers ARG  A list of headers to apply to all outgoing data.\n>\n> Control Server Options\n>   --control                Unsupported. Requires build with -f+control.\n>                            Start the control server.\n>   --control-port           Unsupported. Requires build with -f+control.\n>                            The port number for the control server.\n>   --control-cors-allow-origin\n>                            Unsupported. Requires build with -f+control.\n>                            Set the allowed origins for the control server CORS policy.\n>   --control-cors-max-age   Unsupported. Requires build with -f+control.\n>                            Set the maximum age of a cached CORS preflight request for the control server CORS policy.\n>   --control-cors-require-origin\n>                            Unsupported. Requires build with -f+control.\n>                            If enabled, the control server will not accept requests without an Origin header.\n>   --control-cors-ignore-failure\n>                            Unsupported. Requires build with -f+control.\n>                            If enabled, the control server will accept malformed CORS preflight requests.\n>\n> Debug Options\n>   --my-eventlog-socket-unix\n>                            Unsupported. Requires build with -f+use-eventlog-socket.\n>                            Open an eventlog socket for this program on the given Unix socket.\n>   --my-ghc-debug-socket    Unsupported. Requires build with -f+use-ghc-debug-stub.\n>                            Open the default ghc-debug socket for this program.\n>   --my-ghc-debug-socket-unix\n>                            Unsupported. Requires build with -f+use-ghc-debug-stub.\n>                            Open a ghc-debug Unix domain socket with the given file path.\n>   --my-ghc-debug-socket-tcp\n>                            Unsupported. Requires build with -f+use-ghc-debug-stub.\n>                            Open a ghc-debug TCP/IP socket with the given address as 'host:port'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."eventlog-live" or (errorHandler.buildDepError "eventlog-live"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
          (hsPkgs."grapesy" or (errorHandler.buildDepError "grapesy"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hs-opentelemetry-otlp" or (errorHandler.buildDepError "hs-opentelemetry-otlp"))
          (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."ipedb" or (errorHandler.buildDepError "ipedb"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
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