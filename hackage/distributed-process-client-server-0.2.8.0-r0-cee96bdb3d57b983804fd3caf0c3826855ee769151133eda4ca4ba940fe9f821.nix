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
        name = "distributed-process-client-server";
        version = "0.2.8.0";
      };
      license = "BSD-3-Clause";
      copyright = "Tim Watson 2012 - 2017";
      maintainer = "The Distributed Haskell team";
      author = "Tim Watson";
      homepage = "http://github.com/haskell-distributed/distributed-process";
      url = "";
      synopsis = "The Cloud Haskell Application Platform";
      description = "Modelled after Erlang OTP's gen_server, this framework provides similar\nfacilities for Cloud Haskell, grouping essential practices for client/server\ndevelopment into a set of modules and standards designed to help you build\nconcurrent, distributed applications with relative ease.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
          (hsPkgs."distributed-process-extras" or (errorHandler.buildDepError "distributed-process-extras"))
          (hsPkgs."distributed-process-async" or (errorHandler.buildDepError "distributed-process-async"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
        ];
        buildable = true;
      };
      tests = {
        "ManagedProcessTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-extras" or (errorHandler.buildDepError "distributed-process-extras"))
            (hsPkgs."distributed-process-async" or (errorHandler.buildDepError "distributed-process-async"))
            (hsPkgs."distributed-process-client-server" or (errorHandler.buildDepError "distributed-process-client-server"))
            (hsPkgs."distributed-process-systest" or (errorHandler.buildDepError "distributed-process-systest"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
          buildable = true;
        };
        "PrioritisedProcessTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-extras" or (errorHandler.buildDepError "distributed-process-extras"))
            (hsPkgs."distributed-process-async" or (errorHandler.buildDepError "distributed-process-async"))
            (hsPkgs."distributed-process-client-server" or (errorHandler.buildDepError "distributed-process-client-server"))
            (hsPkgs."distributed-process-systest" or (errorHandler.buildDepError "distributed-process-systest"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
          buildable = true;
        };
      };
    };
  }