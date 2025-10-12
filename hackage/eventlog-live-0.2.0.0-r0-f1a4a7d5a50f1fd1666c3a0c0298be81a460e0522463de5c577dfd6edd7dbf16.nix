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
      identifier = { name = "eventlog-live"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021-2025 Well-Typed";
      maintainer = "wen@well-typed.com";
      author = "Wen Kokke";
      homepage = "";
      url = "";
      synopsis = "Live processing of eventlog data.";
      description = "This package supports live processing of eventlog data.\nIt consists of three libraries:\n\n*   The @eventlog-live@ library defines\n    [machines](https://hackage.haskell.org/package/machines)\n    for processing eventlog data.\n*   The @eventlog-live:options@ sub-library defines\n    [optparse-applicative](https://hackage.haskell.org/package/optparse-applicative)\n    parsers for common command-line arguments.\n*   The @eventlog-live:socket@ sub-library defines functions to read the\n    eventlog from a Unix socket, which depend on the\n    [network](https://hackage.haskell.org/package/network) package.\n\nThis package is primarily intended for use via the\n[eventlog-live-influxdb](https://hackage.haskell.org/package/eventlog-live-influxdb)\nand\n[eventlog-live-otelcol](https://hackage.haskell.org/package/eventlog-live-otelcol)\npackages.\n\n[⚠️ Warning]:\n    This package is experimental.\n    It is versioned according to the [PVP](https://pvp.haskell.org).\n    However, breaking changes should be expected and no effort will be\n    made to avoid major version bumps until at least version @1.0.0.0@.\n\nFor more information, see [the README](https://github.com/well-typed/eventlog-live#readme).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."eventlog-live".components.sublibs.logger or (errorHandler.buildDepError "eventlog-live:logger"))
          (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      sublibs = {
        "logger" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "options" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eventlog-live" or (errorHandler.buildDepError "eventlog-live"))
            (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
        "socket" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."eventlog-live" or (errorHandler.buildDepError "eventlog-live"))
            (hsPkgs."eventlog-live".components.sublibs.logger or (errorHandler.buildDepError "eventlog-live:logger"))
            (hsPkgs."eventlog-live".components.sublibs.options or (errorHandler.buildDepError "eventlog-live:options"))
            (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
          buildable = true;
        };
      };
    };
  }