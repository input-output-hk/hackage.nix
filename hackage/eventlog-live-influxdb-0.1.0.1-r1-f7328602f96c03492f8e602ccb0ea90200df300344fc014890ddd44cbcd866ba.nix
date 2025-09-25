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
      identifier = { name = "eventlog-live-influxdb"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Well-Typed";
      maintainer = "wen@well-typed.com";
      author = "Wen Kokke";
      homepage = "";
      url = "";
      synopsis = "Stream eventlog data into InfluxDB.";
      description = "This executable supports live streaming of eventlog data into\n[InfluxDB](https://www.influxdata.com) version 1.8.\n\n> Usage: eventlog-live-influxdb --eventlog-socket SOCKET\n>                               [--eventlog-socket-timeout NUM]\n>                               [--eventlog-socket-exponent NUM]\n>                               [--batch-interval NUM] [--eventlog-log-file FILE]\n>                               [-h Tcmdyrbi]\n>                               [-v|--verbosity NUM|quiet|error|warning]\n>                               [--influxdb-username USERNAME\n>                                 --influxdb-password PASSWORD]\n>                               [--influxdb-retention-policy RETENTION_POLICY]\n>                               [--influxdb-host HOST] [--influxdb-port HOST]\n>                               [--influxdb-ssl] --influxdb-database DATABASE\n>\n> Available options:\n>   --eventlog-socket SOCKET Eventlog Unix socket.\n>   --eventlog-socket-timeout NUM\n>                            Eventlog socket connection retry timeout in\n>                            microseconds.\n>   --eventlog-socket-exponent NUM\n>                            Eventlog socket connection retry timeout exponent.\n>   --batch-interval NUM     Batch interval in microseconds.\n>   --eventlog-log-file FILE Use file to log binary eventlog data.\n>   -h Tcmdyrbi              Heap profile breakdown.\n>   -v,--verbosity NUM|quiet|error|warning\n>                            The verbosity threshold for logging.\n>   --influxdb-username USERNAME\n>                            InfluxDB username\n>   --influxdb-password PASSWORD\n>                            InfluxDB password\n>   --influxdb-retention-policy RETENTION_POLICY\n>                            InfluxDB retention policy\n>   --influxdb-host HOST     InfluxDB server host\n>   --influxdb-port HOST     InfluxDB server host\n>   --influxdb-ssl           InfluxDB server SSL\n>   --influxdb-database DATABASE\n>                            InfluxDB database name\n>   --help                   Show this help text.\n>   --version                Show version information";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."eventlog-live" or (errorHandler.buildDepError "eventlog-live"))
          (hsPkgs."eventlog-live".components.sublibs.options or (errorHandler.buildDepError "eventlog-live:options"))
          (hsPkgs."eventlog-live".components.sublibs.socket or (errorHandler.buildDepError "eventlog-live:socket"))
          (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
          (hsPkgs."influxdb" or (errorHandler.buildDepError "influxdb"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "eventlog-live-influxdb" = {
          depends = [
            (hsPkgs."eventlog-live-influxdb" or (errorHandler.buildDepError "eventlog-live-influxdb"))
          ];
          buildable = true;
        };
      };
    };
  }