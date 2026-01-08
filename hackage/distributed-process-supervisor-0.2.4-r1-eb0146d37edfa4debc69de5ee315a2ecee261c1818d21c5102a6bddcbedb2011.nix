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
        name = "distributed-process-supervisor";
        version = "0.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "Tim Watson 2012 - 2013";
      maintainer = "The Distributed Haskell team";
      author = "Tim Watson";
      homepage = "http://github.com/haskell-distributed/distributed-process";
      url = "";
      synopsis = "Supervisors for The Cloud Haskell Application Platform";
      description = "A part of the Cloud Haskell framework\n\nThis package implements a process which supervises a set of other processes, referred to as its children.\nThese child processes can be either workers (i.e., processes that do something useful in your application)\nor other supervisors. In this way, supervisors may be used to build a hierarchical process structure\ncalled a supervision tree, which provides a convenient structure for building fault tolerant software.\n\nFor detailed information see \"Control.Distributed.Process.Supervisor\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
          (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
          (hsPkgs."distributed-process-extras" or (errorHandler.buildDepError "distributed-process-extras"))
          (hsPkgs."distributed-process-client-server" or (errorHandler.buildDepError "distributed-process-client-server"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
        ];
        buildable = true;
      };
      tests = {
        "SupervisorTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-supervisor" or (errorHandler.buildDepError "distributed-process-supervisor"))
            (hsPkgs."distributed-process-extras" or (errorHandler.buildDepError "distributed-process-extras"))
            (hsPkgs."distributed-process-client-server" or (errorHandler.buildDepError "distributed-process-client-server"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
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
        "NonThreadedSupervisorTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-supervisor" or (errorHandler.buildDepError "distributed-process-supervisor"))
            (hsPkgs."distributed-process-extras" or (errorHandler.buildDepError "distributed-process-extras"))
            (hsPkgs."distributed-process-client-server" or (errorHandler.buildDepError "distributed-process-client-server"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
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