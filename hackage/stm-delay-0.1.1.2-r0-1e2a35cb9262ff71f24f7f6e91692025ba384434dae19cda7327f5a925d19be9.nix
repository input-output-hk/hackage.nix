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
      identifier = { name = "stm-delay"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2012";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "https://github.com/joeyadams/haskell-stm-delay";
      url = "";
      synopsis = "Updatable one-shot timer polled with STM";
      description = "This library lets you create a one-shot timer, poll it using STM,\nand update it to ring at a different time than initially specified.\n\nIt uses GHC event manager timeouts when available\n(GHC 7.2+, @-threaded@, non-Windows OS), yielding performance similar\nto @threadDelay@ and @registerDelay@.  Otherwise, it falls back to\nforked threads and @threadDelay@.\n\n[0.1.1.2 (2025-05-08)]\n\n- Remove a call to ensureIOManagerIsRunning, for consistency with System.Timeout\n\n- Adjust timings in the testsuite to fix intermittent failure in the non-threaded RTS case.\n\n[0.1.1 (2014-09-14)]\n\n- Add tryWaitDelayIO, improve performance for certain cases of @newDelay@\nand @updateDelay@, and improve example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-delay" or (errorHandler.buildDepError "stm-delay"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "test-threaded" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-delay" or (errorHandler.buildDepError "stm-delay"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }