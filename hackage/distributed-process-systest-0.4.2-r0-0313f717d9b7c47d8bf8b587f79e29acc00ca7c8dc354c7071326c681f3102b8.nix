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
      identifier = { name = "distributed-process-systest"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "Tim Watson";
      maintainer = "The Distributed Haskell team";
      author = "Tim Watson";
      homepage = "http://github.com/haskell-distributed/distributed-process-systest";
      url = "";
      synopsis = "Cloud Haskell Test Support";
      description = "Testing Frameworks and Capabilities for programs built on Cloud Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }