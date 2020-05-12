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
      specVersion = "1.10";
      identifier = { name = "Dflow"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "© Paul Johnson 2012";
      maintainer = "<paul@cogito.org.uk>";
      author = "Paul Johnson";
      homepage = "";
      url = "";
      synopsis = "Processing Real-time event streams";
      description = "This library provides Real Time Stream Processors (RTSPs). An RTSP\ntransforms an input event stream into an output event stream. The output\nevents occur asynchronously with input events. RTSPs can be composed into\npipelines or executed in parallel and their outputs merged. A Real Time\nAction (RTA) monad is provided for creating new primitive RTSPs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "ArbTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }