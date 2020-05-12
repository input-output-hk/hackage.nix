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
    flags = { benchmarks = false; unsafe-constructs = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "network-transport-zeromq"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014, EURL Tweag";
      maintainer = "Alexander Vershilov <alexander.vershilov@tweag.io>";
      author = "Alexander Vershilov";
      homepage = "";
      url = "";
      synopsis = "ZeroMQ backend for network-transport";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      exes = {
        "bench-dp-latency" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-transport-zeromq" or (errorHandler.buildDepError "network-transport-zeromq"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            ];
          buildable = if flags.benchmarks then true else false;
          };
        "bench-dp-throughput" = {
          depends = (pkgs.lib).optionals (flags.benchmarks) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-zeromq" or (errorHandler.buildDepError "network-transport-zeromq"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            ];
          buildable = if flags.benchmarks then true else false;
          };
        "bench-dp-channels" = {
          depends = (pkgs.lib).optionals (flags.benchmarks) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-zeromq" or (errorHandler.buildDepError "network-transport-zeromq"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            ];
          buildable = if flags.benchmarks then true else false;
          };
        };
      tests = {
        "test-zeromq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-zeromq" or (errorHandler.buildDepError "network-transport-zeromq"))
            (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
            (hsPkgs."network-transport-tests" or (errorHandler.buildDepError "network-transport-tests"))
            ];
          buildable = true;
          };
        "test-api" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-zeromq" or (errorHandler.buildDepError "network-transport-zeromq"))
            (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
            ];
          buildable = true;
          };
        "test-ch-core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-transport-zeromq" or (errorHandler.buildDepError "network-transport-zeromq"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "test-ch-closure" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-transport-zeromq" or (errorHandler.buildDepError "network-transport-zeromq"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "test-ch-stat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network-transport-zeromq" or (errorHandler.buildDepError "network-transport-zeromq"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }