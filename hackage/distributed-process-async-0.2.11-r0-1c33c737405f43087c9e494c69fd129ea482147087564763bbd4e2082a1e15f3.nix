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
      identifier = { name = "distributed-process-async"; version = "0.2.11"; };
      license = "BSD-3-Clause";
      copyright = "Tim Watson 2012 - 2016";
      maintainer = "The Distributed Haskell team";
      author = "Tim Watson";
      homepage = "http://github.com/haskell-distributed/distributed-process";
      url = "";
      synopsis = "Cloud Haskell Async API";
      description = "This package provides a higher-level interface over Processes, in which an Async a is a\nconcurrent, possibly distributed Process that will eventually deliver a value of type a.\nThe package provides ways to create Async computations, wait for their results, and cancel them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
      tests = {
        "AsyncTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."distributed-process-async" or (errorHandler.buildDepError "distributed-process-async"))
            (hsPkgs."distributed-process-systest" or (errorHandler.buildDepError "distributed-process-systest"))
            (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }