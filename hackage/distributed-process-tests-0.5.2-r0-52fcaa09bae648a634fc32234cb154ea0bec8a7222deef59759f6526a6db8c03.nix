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
    flags = { tcp = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "distributed-process-tests"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "The Distributed Haskell team";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process/tree/master/distributed-process-tests";
      url = "";
      synopsis = "Tests and test support tools for distributed-process.";
      description = "Tests and test suite for Cloud Haskell libraries, specifically the core distributed-process library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
          (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
      tests = {
        "TestCHInMemory" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network-transport-inmemory" or (errorHandler.buildDepError "network-transport-inmemory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
        "TestCHInTCP" = {
          depends = pkgs.lib.optionals (flags.tcp) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = if flags.tcp then true else false;
        };
        "TestClosure" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network-transport-inmemory" or (errorHandler.buildDepError "network-transport-inmemory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
        "TestStats" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network-transport-inmemory" or (errorHandler.buildDepError "network-transport-inmemory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
        "TestMxInMemory" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network-transport-inmemory" or (errorHandler.buildDepError "network-transport-inmemory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
        "TestTracingInMemory" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network-transport-inmemory" or (errorHandler.buildDepError "network-transport-inmemory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
        "TestMxInTCP" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-tests" or (errorHandler.buildDepError "distributed-process-tests"))
            (hsPkgs."network-transport-inmemory" or (errorHandler.buildDepError "network-transport-inmemory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
      };
    };
  }